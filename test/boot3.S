    .section .text                # 代码段
    .global _start
_start:
    cli                           # 禁用中断
    hlt                           # 停止 CPU

    .fill 510 - (.-_start), 1, 0  # 填充到 510 字节
    .word 0xAA55                  # 引导扇区标志
