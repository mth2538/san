

将`_worker.js`代码托管到Cloudflare的Workers或Pages后，按照下面内容操作。

### 一、在Cloudflare中设置环境变量

| **变量名称**     | **说明**                                                     | 必须/可选 |
| ---------------- | ------------------------------------------------------------ | --------- |
| UUID4            | vless协议所用uuid                                            | 必须      |
| SHA224PWD        | trojan协议所用password对应的sha224编码                       | 必须      |
| SSSIG            | shadowsocks协议所用，自定义访问权限，防止被别人盗用          | 必须      |
| DEFAULTDOCDOMAIN | 伪装网页，添加要伪装的域名                                   | 可选      |
| SUBPWD           | /sub?pwd=访问的密码                                          | 可选      |
| PROXY_BANK_URL   | [proxyList.txt](https://github.com/juerson/three-in-one/blob/main/proxyList.txt) | 可选      |

<img src="images\变量.png" style="zoom:80%;" />

### 二、获取代理

```
https://worker.username.workers.dev.com/sub?pwd=5d2zv8WT
```

<img src="images\sub网页.png" style="zoom:80%;" />

<img src="images\分享链接raw.png" style="zoom:80%;" />

使用到的工具：[v2rayN](https://github.com/2dust/v2rayN)、[v2rayN-Pro](https://github.com/lowercase78/V2RayN-PRO)、[Nekoray](https://github.com/Mahdi-zarei/nekoray)

### 三、温馨提示

1、代码基于 [@Nautica](https://github.com/FoolVPN-ID/Nautica) 改写，解决节点可能被盗用的风险。

2、 [@Nautica](https://github.com/FoolVPN-ID/Nautica) 原代码中，还有其它功能，可能没有测试到，只保证核心的代理功能与更换PROXYIP的功能可以使用。

3、PROXYIP失效，节点无法使用的，需更换节点中path的PROXYIP。

### 四、免责声明

该项目仅供学习/研究目的，用户对法律合规和道德行为负责，作者对任何滥用行为概不负责。
