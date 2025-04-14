@echo off
setlocal

set INPUT_FILE=worker.js
set OUTPUT_FILE=_worker.js

echo 使用 npx 执行 javascript-obfuscator...
npx javascript-obfuscator %INPUT_FILE% --output %OUTPUT_FILE% ^
    --compact true ^                                REM 去除多余空格，压缩代码
    --control-flow-flattening true ^                REM 控制流扁平化：将 if/while 等结构变复杂难读
    --dead-code-injection true ^                    REM 注入无用代码，增加混淆性，扰乱逆向分析
    --dead-code-injection-threshold 0.3 ^           REM 设置无用代码注入的比例（0~1）
    --string-array true ^                           REM 启用字符串数组处理，把字符串提取出来放数组里
    --string-array-encoding base64 ^                REM 对字符串数组进行 Base64 编码（可选：base64, rc4）
    --string-array-threshold 0.75 ^                 REM 字符串数组混淆覆盖比例，有多少比例的字符串被放入数组
    --split-strings true ^                          REM 拆分字符串后再组合（如："hello" → "he"+"llo"）
    --split-strings-chunk-length 5                  REM 拆分字符串的最小长度

endlocal
pause