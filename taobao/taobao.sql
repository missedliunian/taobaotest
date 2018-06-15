-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 06 月 15 日 07:52
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `taobao`
--

-- --------------------------------------------------------

--
-- 表的结构 `direct`
--

CREATE TABLE IF NOT EXISTS `direct` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `subtitle` varchar(20) NOT NULL,
  `urlbig` varchar(200) NOT NULL,
  `urlsmall1` varchar(200) NOT NULL,
  `urlsmall2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `direct`
--

INSERT INTO `direct` (`id`, `title`, `subtitle`, `urlbig`, `urlsmall1`, `urlsmall2`) VALUES
(1, '小狮妹HeBe', '2328观看', 'https://img.alicdn.com/imgextra/i1/TB2JL5kbEz.BuNjt_bXXXcQmpXa_!!0-tbCommonAudio.jpg_180x180q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i4/3611173642/TB2r4sivv5TBuNjSspmXXaDRVXa_!!3611173642.jpg_100x100q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i1/3611173642/TB2nRZovuuSBuNjy1XcXXcYjFXa_!!3611173642.jpg_100x100q90.jpg_.webp'),
(2, '化妆师紫云', '5326观看', 'https://img.alicdn.com/tfscom/i4/TB2g4wIhYsrBKNjSZFpXXcXhFXa_!!0-dgshop.jpg_180x180q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i2/1801550387/TB1CjYvt7KWBuNjy1zjXXcOypXa_!!0-item_pic.jpg_100x100q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i1/1801550387/TB1qgeUlLuSBuNkHFqDXXXfhVXa_!!0-item_pic.jpg_100x100q90.jpg_.webp'),
(3, 'M_信惠', '2533观看', 'https://img.alicdn.com/tfscom/i3/TB2HAPIoviSBuNkSnhJXXbDcpXa_!!0-dgshop.jpg_180x180q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i1/2778816042/TB29XbVcMZC2uNjSZFnXXaxZpXa_!!2778816042.png_100x100q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i1/3254007357/TB2GFkqmBcHL1JjSZJiXXcKcpXa_!!3254007357.jpg_100x100q90.jpg_.webp'),
(4, 'CC家高端独立', '544观看', 'https://img.alicdn.com/tfscom/i1/TB2.tC0oRyWBuNkSmFPXXXguVXa_!!0-dgshop.jpg_180x180q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i4/3411290505/TB2FZaBtr5YBuNjSspoXXbeNFXa_!!3411290505.jpg_100x100q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i2/3411290505/TB2.kMYklyWBuNkSmFPXXXguVXa_!!3411290505.jpg_100x100q90.jpg_.webp');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(99) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `url`, `title`, `description`) VALUES
(1, 'https://img.alicdn.com/imgextra/i3/1886357310/TB2hgHgs90mpuFjSZPiXXbssVXa_!!1886357310-0-daren.jpg_180x180xzq90.jpg_.webp', '英伦风撞色纹搭扣皮鞋', '满版爆裂纹设计以抽象蓝白色调呈现，视觉时髦更显英伦腔调。'),
(2, 'https://img.alicdn.com/imgextra/i4/371832545/TB24SSRhDtYBeNjy1XdXXXXyVXa_!!371832545-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp', 'VERSACE美杜莎小白鞋', '一体化的纯白色鞋身清爽又随性。'),
(3, 'https://img.alicdn.com/imgextra/i2/543322537/TB2OfI3gsnI8KJjSsziXXb8QpXa_!!543322537-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp', 'Ports珠片连衣裙', '修身裙型弧度优美大方，腰间处以立体拼接，加大显明立体效果感。'),
(4, 'https://img.alicdn.com/imgextra/i2/2185833349/TB2qfD4pXuWBuNjSspnXXX1NVXa_!!2185833349-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp', 'SOPHNET. 迷彩拼接口袋T恤', '黑色主题背景设计，显得简约大气。'),
(5, 'https://img.alicdn.com/imgextra/i4/3255255002/TB22boydN1YBuNjy1zcXXbNcXXa_!!3255255002-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp', 'Tory Burch 花草印花低跟', '别致的低跟造型行走毫无拘束感'),
(6, 'https://img.alicdn.com/imgextra/i2/3310677397/TB2uEwRleuSBuNjSsplXXbe8pXa_!!3310677397-0-daren.jpg_180x180xzq90.jpg_.webp', 'Gucci刺绣拼接运动鞋', '采用头层牛皮材质，便于打理，舒适耐磨。');

-- --------------------------------------------------------

--
-- 表的结构 `hotone`
--

CREATE TABLE IF NOT EXISTS `hotone` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `hotone`
--

INSERT INTO `hotone` (`id`, `url`, `title`, `price`) VALUES
(1, 'https://gma.alicdn.com/bao/uploaded/i1/15381762/TB2CKXNlCYH8KJjSspdXXcRgVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', 'Apple/苹果 iPhoneX 5.8寸屏全面屏吃鸡手机', '¥6158'),
(2, 'https://img.alicdn.com/bao/uploaded/i3/1917047079/TB1IfFybl_85uJjSZPfXXcp0FXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', 'Apple/苹果 iPhone X', '¥8316'),
(3, 'https://gma.alicdn.com/bao/uploaded/i1/1307606090078856158/TB23DNBX2AkyKJjy0FfXXaxhpXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '水果折叠凳塑料加厚便携凳手提式火车椅子儿', '¥19.9'),
(4, 'https://gma.alicdn.com/bao/uploaded/i1/1352206070938415997/TB2vihruwxlpuFjSszbXXcSVpXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', 'vopra 实木小板凳卡通木质小凳子儿童学习椅', '¥155'),
(5, 'https://gma.alicdn.com/bao/uploaded/i4/1810206021095511602/TB2pX35meJ8puFjy1XbXXagqVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '凳子 北欧时尚创意板凳家用塑料创意懒人成', '¥135'),
(6, 'https://gma.alicdn.com/bao/uploaded/i1/31571246/TB2yKJiqNGYBuNjy0FnXXX5lpXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '不锈钢折叠凳子家用餐桌圆凳板凳椅子加厚', '¥75'),
(7, 'https://gma.alicdn.com/bao/uploaded/i2/44141553/TB2oKuyw7OWBuNjSsppXXXPgpXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '含朵日系简约风针织棉细条纹四件套纯棉裸睡', '¥265'),
(8, 'https://gma.alicdn.com/bao/uploaded/i2/119593164/TB21qbymfDH8KJjy1XcXXcpdXXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '香樟小方凳小板凳成人仿古凳子换鞋凳小木凳', '¥188'),
(9, 'https://gma.alicdn.com/bao/uploaded/i3/114240713/TB2PmVWuruWBuNjSszgXXb8jVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '矮凳实木沙发凳换鞋凳茶几凳时尚圆凳', '¥71'),
(10, 'https://gma.alicdn.com/bao/uploaded/i1/124027757/TB2T5RccwZC2uNjSZFnXXaxZpXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '实木长条凳小板凳简约时尚创意换鞋矮凳子', '¥368');

-- --------------------------------------------------------

--
-- 表的结构 `live`
--

CREATE TABLE IF NOT EXISTS `live` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `live`
--

INSERT INTO `live` (`id`, `url`) VALUES
(1, 'https://img.alicdn.com/tfscom/TB2_RICtYtlpuFjSspfXXXLUpXa_!!434937343.jpg_80x80q90.jpg_.webp'),
(2, 'https://img.alicdn.com/tfscom/TB1jQf3kTdYBeNkSmLySutfnVXa.jpg_80x80q90.jpg_.webp'),
(3, 'https://img.alicdn.com/tfscom/TB2rV3JmpXXXXbwXpXXXXXXXXXX_!!0-juitemmedia.jpg_80x80q90.jpg_.webp'),
(4, 'https://img.alicdn.com/tfscom/TB2yDaJfRDH8KJjSspnXXbNAVXa_!!0-juitemmedia.jpg_80x80q90.jpg_.webp'),
(5, 'https://img.alicdn.com/tfscom/TB2yerUgpXXXXX4XpXXXXXXXXXX_!!5-2-subaru.png_80x80q90.jpg_.webp'),
(6, 'https://img.alicdn.com/tfscom/TB2Z1AlgpXXXXXjXXXXXXXXXXXX_!!5-2-subaru.png_80x80q90.jpg_.webp');

-- --------------------------------------------------------

--
-- 表的结构 `registor`
--

CREATE TABLE IF NOT EXISTS `registor` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(99) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `registor`
--

INSERT INTO `registor` (`id`, `username`, `password`, `email`) VALUES
(20, 'jack', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com'),
(22, 'rose', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com'),
(27, 'hjkl', 'e10adc3949ba59abbe56e057f20f883e', '2324@qq.com'),
(46, 'godv', 'e10adc3949ba59abbe56e057f20f883e', 'godv@qq.com'),
(48, 'nb211', 'e10adc3949ba59abbe56e057f20f883e', 'nb211@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `runon`
--

CREATE TABLE IF NOT EXISTS `runon` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(20) NOT NULL,
  `price` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `runon`
--

INSERT INTO `runon` (`id`, `url`, `title`, `description`, `price`) VALUES
(1, 'https://img.alicdn.com/tps/i4/188480296964587541/TB24EANX3Qc61BjSZFGXXa1DFXa_!!0-juitemmedia.jpg_180x180q90.jpg_.webp', '复兴岛 大连野生淡干海参50g', '买两件领券立减20元', '¥305'),
(2, 'https://img.alicdn.com/tps/i2/TB2QVQUmIyYBuNkSnfoXXcWgVXa_!!0-juitemmedia.jpg_180x180q90.jpg_.webp', '4核强劲动力智能捶打按摩披肩', '领券下单立减50元', '¥218'),
(3, 'https://img.alicdn.com/tps/i2/0/TB2sbHKfxSYBuNjSspjXXX73VXa_!!0-juitemmedia.jpg_180x180q90.jpg_.webp', 'ziaja齐叶雅 羊奶面膜20片/盒', '第2件领券减30元', '¥99');

-- --------------------------------------------------------

--
-- 表的结构 `scale`
--

CREATE TABLE IF NOT EXISTS `scale` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `urlArr` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `scale`
--

INSERT INTO `scale` (`id`, `urlArr`) VALUES
(1, 'https://gd3.alicdn.com/imgextra/i2/100340983/TB2CwEqnIyYBuNkSnfoXXcWgVXa_!!100340983.jpg,https://gd3.alicdn.com/imgextra/i3/100340983/TB2U4N6fljTBKNjSZFNXXasFXXa_!!100340983.jpg,https://gd4.alicdn.com/imgextra/i4/100340983/TB2VtUvuMaTBuNjSszfXXXgfpXa_!!100340983.jpg,https://gd2.alicdn.com/imgextra/i2/100340983/TB2gmFkXkfb_uJkHFJHXXb4vFXa_!!100340983.jpg,https://gd1.alicdn.com/imgextra/i1/100340983/TB2GLYfatnJ8KJjSszdXXaxuFXa_!!100340983.jpg'),
(2, 'https://gd2.alicdn.com/imgextra/i4/1665069890/TB2ZD0kgYArBKNjSZFLXXc_dVXa_!!1665069890.jpg,https://gd2.alicdn.com/imgextra/i2/1665069890/TB2ezeUeFuWBuNjSszbXXcS7FXa_!!1665069890.jpg,https://gd2.alicdn.com/imgextra/i2/1665069890/TB212eZeFGWBuNjy0FbXXb4sXXa_!!1665069890.jpg,https://gd4.alicdn.com/imgextra/i4/1665069890/TB2Jva0eGSWBuNjSsrbXXa0mVXa_!!1665069890.jpg,https://gd3.alicdn.com/imgextra/i3/1665069890/TB2olyJeFmWBuNjSspdXXbugXXa_!!1665069890.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `shopcarts`
--

CREATE TABLE IF NOT EXISTS `shopcarts` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `ele` varchar(2000) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `shopcarts`
--

INSERT INTO `shopcarts` (`id`, `ele`) VALUES
(1, '<ul class="order_lists"><li class="list_chk"><input type="checkbox" id="checkbox_8" class="son_check"><label for="checkbox_8"></label></li><li class="list_con"><div class="list_img"><a href="javascript:;"><img src="../img/4.png" alt=""></a></div><div class="list_text"><a href="javascript:;">3头电动剃须刀FS356充电式刮胡刀男三头水洗正品原装飞科智能全身</a></div></li><li class="list_info"><p>规格：默认</p><p>尺寸：16*16*3(cm)</p></li><li class="list_price"><p class="price">￥1980</p></li><li class="list_amount"><div class="amount_box"><a href="javascript:;" class="reduce reSty">-</a><input type="text" value="1" class="sum"><a href="javascript:;" class="plus">+</a></div></li><li class="list_sum"><p class="sum_price">￥1980</p></li><li class="list_op"><p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p></li></ul>'),
(2, '<ul class="order_lists"><li class="list_chk"><input type="checkbox" id="checkbox_8" class="son_check"><label for="checkbox_8"></label></li><li class="list_con"><div class="list_img"><a href="javascript:;"><img src="../img/5.png" alt=""></a></div><div class="list_text"><a href="javascript:;">心相印卷纸 心柔纸巾3层140g*27粒有芯卫生纸品整箱 新老包装随机</a></div></li><li class="list_info"><p>规格：默认</p><p>尺寸：16*16*3(cm)</p></li><li class="list_price"><p class="price">￥480</p></li><li class="list_amount"><div class="amount_box"><a href="javascript:;" class="reduce reSty">-</a><input type="text" value="1" class="sum"><a href="javascript:;" class="plus">+</a></div></li><li class="list_sum"><p class="sum_price">￥1980</p></li><li class="list_op"><p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p></li></ul>');

-- --------------------------------------------------------

--
-- 表的结构 `shoping`
--

CREATE TABLE IF NOT EXISTS `shoping` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `shoping`
--

INSERT INTO `shoping` (`id`, `url`, `title`) VALUES
(1, 'https://img.alicdn.com/bao/uploaded/TB21sL0bfImBKNjSZFlXXc43FXa_!!3458911564-0-daren.jpg_180x180xzq90.jpg_.webp', '硅胶婴儿宝宝吃饭围兜儿童防水立体饭兜围嘴大号小孩口水兜免洗'),
(2, 'https://img.alicdn.com/bao/uploaded/TB28LPdlWmgSKJjSspiXXXyJFXa_!!0-juitemmedia.jpg_180x180xzq90.jpg_.webp', '蒜蓉手动打捣切绞大蒜头压蒜碎机蒜泥搅蒜器家用拉蒜臼子厨房神器'),
(3, 'https://img.alicdn.com/bao/uploaded/TB2sIpgeVXXXXb0XXXXXXXXXXXX_!!756526310.jpg_180x180xzq90.jpg_.webp', '男童内裤平角纯棉儿童三角四角裤小男孩青少年学生中大童短裤95棉'),
(4, 'https://img.alicdn.com/bao/uploaded/TB11EFNRpXXXXX_XFXXSutbFXXX.jpg_180x180xzq90.jpg_.webp', '花花公子袜子男士纯棉中筒薄款全棉防臭吸汗运动长短袜男棉袜夏季'),
(5, 'https://img.alicdn.com/bao/uploaded/TB1VPkyjqmgSKJjSsphSuwy1VXa.jpg_180x180xzq90.jpg_.webp', '炊尚麦饭石平底锅不粘锅煎锅牛排锅煎饼锅电磁炉燃气通用锅煎蛋锅'),
(6, 'https://img.alicdn.com/bao/uploaded/i8/TB1kPzCOpXXXXajapXXSutbFXXX.jpg_180x180xzq90.jpg_.webp', '韩后气垫cc霜遮瑕裸妆补水保湿提亮肤色学生用bb霜粉底液网红正品');

-- --------------------------------------------------------

--
-- 表的结构 `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `slideshow`
--

INSERT INTO `slideshow` (`id`, `url`) VALUES
(1, 'https://img.alicdn.com/tfs/TB100bhwr9YBuNjy0FgXXcxcXXa-520-280.jpg_q90_.webp'),
(2, 'https://img.alicdn.com/simba/img/TB1wiR.hbsrBKNjSZFpSuwXhFXa.jpg'),
(3, 'https://img.alicdn.com/tfs/TB17YaZwr9YBuNjy0FgXXcxcXXa-520-280.png_q90_.webp'),
(4, 'https://img.alicdn.com/simba/img/TB1ONiWhYZnBKNjSZFrSuuRLFXa.jpg'),
(5, 'https://img.alicdn.com/tfs/TB1.vmBwr9YBuNjy0FgXXcxcXXa-520-280.jpg_q90_.webp');

-- --------------------------------------------------------

--
-- 表的结构 `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `subtitle` varchar(20) NOT NULL,
  `urlbig` varchar(200) NOT NULL,
  `urlsmall1` varchar(200) NOT NULL,
  `urlsmall2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `store`
--

INSERT INTO `store` (`id`, `title`, `subtitle`, `urlbig`, `urlsmall1`, `urlsmall2`) VALUES
(1, '今日推荐', '暂无店铺评价', 'https://img.alicdn.com/tps/i2/TB1FA1kKXXXXXalXVXXgrdL_XXX-980-980.jpg_180x180q90.jpg_.webp', 'https://img.alicdn.com/tps/i3/TB1aL1vKXXXXXXAXFXX8yfuGpXX-700-700.jpg_100x100q90.jpg_.webp', 'https://img.alicdn.com/tps/i4/TB1UuaGKXXXXXcHXXXXE799_VXX-800-800.jpg_100x100q90.jpg_.webp'),
(2, '女神店', '暂无店铺评价', 'https://img.alicdn.com/bao/uploaded/i3/TB10YeXPpXXXXbGXFXXXXXXXXXX_!!0-item_pic.jpg_180x180q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i1/TB1U0nEKFXXXXchXVXXXXXXXXXX_!!0-item_pic.jpg_100x100q90.jpg_.webp', 'https://img.alicdn.com/bao/uploaded/i4/TB1w3nOPFXXXXXCaXXXXXXXXXXX_!!0-item_pic.jpg_100x100q90.jpg_.webp'),
(3, '男人帮', '暂无店铺评价', 'https://img.alicdn.com/tps/i2/TB1RfaYGVXXXXb7XXXXWVw9GFXX-352-352.png_180x180q90.jpg_.webp', 'https://img.alicdn.com/tps/i2/TB1RfaYGVXXXXb7XXXXWVw9GFXX-352-352.png_100x100q90.jpg_.webp', 'https://img.alicdn.com/tps/i2/TB1RfaYGVXXXXb7XXXXWVw9GFXX-352-352.png_100x100q90.jpg_.webp'),
(4, '有腔调', '暂无店铺评价', 'https://img.alicdn.com/tps/i4/TB1TiGwKXXXXXXRXFXXqVMCNVXX-400-400.jpg_180x180q90.jpg_.webp', 'https://img.alicdn.com/tps/i1/TB11KGMKXXXXXX_XXXXqVMCNVXX-400-400.jpg_100x100q90.jpg_.webp', 'https://img.alicdn.com/tps/i2/TB1oCiNKXXXXXXlXXXXqVMCNVXX-400-400.jpg_100x100q90.jpg_.webp');
