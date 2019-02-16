# FACE_RECOGNITION_HAIZEIWANG

#### Description
  - 使用keras提供的vgg16网络结构,识别<海贼王>中的各种人物.
  - inception_v3的效果不好
####  海贼王相关数据集(来源于视频截图 )
  - hzw : 用于训练, 包含  路飞,娜美,索隆,乌索普,罗宾,乔巴,山治以及其它一些人物的数据集,有待补充
  
| 序号 | 文件夹 | 含义 | 数量 |
| :--: | :--: | :--: | :--: |
| 0 |  lufei | 路飞 | 117 张 |
| 1 |  suolong | 索隆 | 90 张 |
| 2  | namei | 娜美 | 84 张 |
| 3 |  wusuopu | 乌索普 | 77张 |
| 4 |  qiaoba | 乔巴 | 102 张 |
| 5 |  shanzhi | 山治 | 47 张 |
| 6 |  luobin | 罗宾 | 105张 |

  - hzw2 : 用于测试  包含 路飞,娜美,索隆,乌索普


#### Python environment
tensorflow
keras
glob
numpy
cv2
matplotlib

#### Usage
`jupyter notebook face_recognition_vgg16.ipynb`

#### Reference


