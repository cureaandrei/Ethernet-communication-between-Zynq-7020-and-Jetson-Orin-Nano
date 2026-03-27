#include <opencv2/opencv.hpp>
#include <opencv2/cudaarithm.hpp>
#include <opencv2/cudaimgproc.hpp>
#include <iostream>

int main(int argc, char** argv) {
    if (argc < 3) {
        std::cerr << "Usage: ./img_cuda in.bmp out.bmp\n";
        return 1;
    }

    cv::Mat img = cv::imread(argv[1], cv::IMREAD_COLOR);
    if (img.empty()) {
        std::cerr << "Cannot read input image\n";
        return 1;
    }

    cv::cuda::GpuMat d_img, d_gray, d_blur, d_edges;
    d_img.upload(img);

    // Filtru 1: grayscale
    cv::cuda::cvtColor(d_img, d_gray, cv::COLOR_BGR2GRAY);

    // Filtru 2: gaussian blur
    auto gauss = cv::cuda::createGaussianFilter(d_gray.type(), d_blur.type(), cv::Size(7,7), 1.5);
    gauss->apply(d_gray, d_blur);

    // Filtru 3: sobel edges (exemplu)
    cv::cuda::GpuMat d_sobelx, d_sobely;
    auto sobelx = cv::cuda::createSobelFilter(d_blur.type(), CV_16S, 1, 0, 3);
    auto sobely = cv::cuda::createSobelFilter(d_blur.type(), CV_16S, 0, 1, 3);
    sobelx->apply(d_blur, d_sobelx);
    sobely->apply(d_blur, d_sobely);

    cv::cuda::GpuMat d_absx, d_absy, d_mag;
    cv::cuda::abs(d_sobelx, d_absx);
    cv::cuda::abs(d_sobely, d_absy);
    cv::cuda::add(d_absx, d_absy, d_mag);

    cv::Mat out;
    d_mag.download(out);

    if (!cv::imwrite(argv[2], out)) {
        std::cerr << "Cannot write output\n";
        return 1;
    }
    return 0;
}
