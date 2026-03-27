# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\diskio.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ff.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ffconf.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\sleep.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs_config.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilrsa.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xiltimer.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xtimer_config.h"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilffs.a"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilrsa.a"
  "C:\\project\\comm\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxiltimer.a"
  )
endif()
