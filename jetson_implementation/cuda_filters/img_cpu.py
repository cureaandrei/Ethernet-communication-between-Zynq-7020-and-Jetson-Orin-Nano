import cv2
import os
import sys

def main():
    if len(sys.argv) < 3:
        print("Usage: python3 img_cpu.py in.bmp out.bmp")
        return 1

    inp = sys.argv[1]
    outp = sys.argv[2]

    os.makedirs(os.path.dirname(outp) or ".", exist_ok=True)

    img = cv2.imread(inp, cv2.IMREAD_COLOR)
    if img is None:
        print(f"Cannot read image: {inp}")
        return 2

    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    blur = cv2.GaussianBlur(gray, (7, 7), 1.5)

    ok = cv2.imwrite(outp, blur)
    if not ok:
        print(f"Cannot write output: {outp}")
        return 3

    print(f"saved {outp}")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
