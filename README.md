## 关于作者 📺

**B站博主：空桐晚秋**

- 🎬 B站主页：["https://space.bilibili.com/286956972](https://space.bilibili.com/286956972)
- 📊 专注于数据分析、R语言教学、统计可视化
- 🚀 每周更新高质量教学视频
- 💡 分享实用的数据分析技巧和案例

## 包简介 📦

`wanqiu` 是一个专门为关注我B站频道的观众设计的R包，主要功能是获取和更新我的视频信息，让数据分析学习者能够更方便地跟踪学习进度、分析视频内容。

## 安装方式 🔧

r

```
# 从GitHub安装最新版本
if (!require("wanqiu", quietly = TRUE)) {
  devtools::install_github("csjsdyp/wanqiu")
}
library(wanqiu)

```



## 核心功能 🎯



r

```
library(wanqiu)

# 获取我的最新视频
Bzhan()
# latest_videos <- get_xxx_videos(n = 10)
# head(latest_videos)

# 输出示例：
#   视频ID      标题               发布日期    播放量  点赞数  时长
# 1 BV1xx  "R语言入门指南"    2024-01-15    5000    350    15:30
# 2 BV1xy  "ggplot2进阶教程"  2024-01-08    7200    420    22:15
```