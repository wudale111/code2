-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-04 15:51:50
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `sp_ad`
--

CREATE TABLE IF NOT EXISTS `sp_ad` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `adname` varchar(45) NOT NULL COMMENT '广告名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '广告类型 1：代表图片  2：代表动画',
  `picurl` varchar(60) NOT NULL COMMENT '广告图片',
  `link` varchar(60) NOT NULL COMMENT '链接地址',
  `ison` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用 0：代表不启用 1：代表启用',
  `posid` mediumint(9) NOT NULL COMMENT '所属广告位',
  PRIMARY KEY (`id`),
  KEY `posid` (`posid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- 转存表中的数据 `sp_ad`
--

INSERT INTO `sp_ad` (`id`, `adname`, `type`, `picurl`, `link`, `ison`, `posid`) VALUES
(31, 'f', 2, '', '', 0, 3),
(34, '22', 1, '', '222', 0, 3),
(37, '测试动画广告', 2, '', '', 0, 3),
(35, '333', 1, '', '333', 0, 3),
(30, 'ceshi233311', 1, '', '222333111', 0, 3),
(36, '444555', 1, '', '444555', 0, 3);

-- --------------------------------------------------------

--
-- 表的结构 `sp_admin`
--

CREATE TABLE IF NOT EXISTS `sp_admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(20) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `sp_admin`
--

INSERT INTO `sp_admin` (`id`, `username`, `password`) VALUES
(1, 'admin6', '123456'),
(2, 'admin1', '123456'),
(4, 'tongpan1', ''),
(5, 'tongnian', ''),
(6, 'tongnian2', 'c33367701511b4f6020ec61ded352059'),
(7, 'admin', 'c33367701511b4f6020ec61ded352059');

-- --------------------------------------------------------

--
-- 表的结构 `sp_adpic`
--

CREATE TABLE IF NOT EXISTS `sp_adpic` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '动画广告图片id',
  `imgurl` varchar(60) NOT NULL COMMENT '图片地址',
  `links` varchar(60) NOT NULL COMMENT '链接地址',
  `adid` mediumint(9) NOT NULL COMMENT '所属广告id',
  PRIMARY KEY (`id`),
  KEY `adid` (`adid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `sp_adpic`
--

INSERT INTO `sp_adpic` (`id`, `imgurl`, `links`, `adid`) VALUES
(7, './Public/Uploads/Ad/2016-11-03/581b55f99a8a1.jpg', 'http://www.baidu.com', 37),
(8, './Public/Uploads/Ad/2016-11-04/581b5f2e80db8.jpg', 'www.tongpan.com', 37),
(10, './Public/Uploads/Ad/2016-11-09/5823472944b16.png', 'http://www.baidu111.com', 37);

-- --------------------------------------------------------

--
-- 表的结构 `sp_adpos`
--

CREATE TABLE IF NOT EXISTS `sp_adpos` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '广告位id',
  `pname` varchar(45) NOT NULL COMMENT '广告位名称',
  `width` smallint(5) unsigned NOT NULL COMMENT '广告位宽度',
  `height` smallint(5) unsigned NOT NULL COMMENT '广告位高度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `sp_adpos`
--

INSERT INTO `sp_adpos` (`id`, `pname`, `width`, `height`) VALUES
(3, '首页头部轮播图2', 10242, 4192),
(5, '首页中部广告位', 900, 200);

-- --------------------------------------------------------

--
-- 表的结构 `sp_article`
--

CREATE TABLE IF NOT EXISTS `sp_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(45) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `cateid` mediumint(9) NOT NULL COMMENT '文章所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `sp_article`
--

INSERT INTO `sp_article` (`id`, `title`, `content`, `cateid`) VALUES
(7, '购物流程', '&lt;p&gt;购物流程购物流程购物流程购物流程&lt;/p&gt;', 5),
(2, '测试文章22', '&lt;p&gt;测试文章2测试文章2测试文章222222&lt;/p&gt;', 4),
(6, '服务流程', '&lt;p&gt;服务流程服务流程服务流程&lt;/p&gt;', 5),
(8, '订购方式', '&lt;p&gt;订购方式订购方式订购方式&lt;/p&gt;', 5),
(9, '如何分辨原装电池', '&lt;p&gt;如何分辨原装电池如何分辨原装电池如何分辨原装电池如何分辨原装电池如何分辨原装电池如何分辨原装电池&lt;/p&gt;', 2),
(10, '如何分辨水货手机', '&lt;p&gt;如何分辨水货手机如何分辨水货手机如何分辨水货手机如何分辨水货手机如何分辨水货手机如何分辨水货手机如何分辨水货手机&lt;/p&gt;', 2),
(11, '如何享受全国联保', '&lt;p&gt;如何享受全国联保如何享受全国联保如何享受全国联保&lt;/p&gt;', 2),
(12, '货到付款区域', '&lt;p&gt;货到付款区域货到付款区域货到付款区域货到付款区域货到付款区域货到付款区域&lt;/p&gt;', 6),
(13, '配送支付查询', '&lt;p&gt;配送支付查询配送支付查询配送支付查询配送支付查询配送支付查询配送支付查询配送支付查询配送支付查询配送支付查询&lt;/p&gt;', 6),
(14, '支付方式', '&lt;p&gt;支付方式支付方式支付方式支付方式支付方式支付方式支付方式支付方式支付方式支付方式支付方式&lt;/p&gt;', 6),
(15, '退货原则', '&lt;p&gt;退货原则退货原则退货原则退货原则退货原则退货原则退货原则退货原则退货原则退货原则&lt;/p&gt;', 7),
(16, '售后服务', '&lt;p&gt;售后服务售后服务售后服务售后服务售后服务售后服务售后服务售后服务售后服务售后服务售后服务售后服务售后服务&lt;/p&gt;', 7),
(17, '产品质量', '&lt;p&gt;产品质量产品质量产品质量产品质量产品质量产品质量产品质量产品质量产品质量产品质量产品质量产品质量&lt;/p&gt;', 7);

-- --------------------------------------------------------

--
-- 表的结构 `sp_attr`
--

CREATE TABLE IF NOT EXISTS `sp_attr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `attr_name` varchar(20) NOT NULL COMMENT '属性名称',
  `attr_type` enum('0','1') NOT NULL COMMENT '属性类型 0:唯一属性 1：单选属性',
  `attr_values` text NOT NULL COMMENT '属性值',
  `type_id` mediumint(9) NOT NULL COMMENT '对应类型id',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `sp_attr`
--

INSERT INTO `sp_attr` (`id`, `attr_name`, `attr_type`, `attr_values`, `type_id`) VALUES
(12, '颜色', '1', '红色,白色,黑色,黄色', 1),
(11, '宽度', '0', '10,20,30', 1),
(10, '长度', '0', '', 1),
(9, '网络制式', '0', '', 1),
(13, '作者', '0', '', 4),
(14, '出版社', '0', '', 4),
(15, '出版日期', '0', '', 4),
(16, '日期', '0', '2015,2016,2014', 4),
(17, '内存', '1', '4G,8G,16G', 1),
(18, '尺寸', '1', 'XS,S,M,L,XL', 5),
(19, '衬衫颜色', '1', '白色,黑色,粉红,浅蓝,紫色', 5),
(20, '材质成分', '0', '', 5),
(21, '销售渠道类型', '0', '', 5),
(22, '货号', '0', '', 5),
(23, '服装版型', '0', '', 5),
(24, '风格', '0', '', 5),
(25, '衣长', '0', '', 5),
(26, '袖长', '0', '', 5),
(27, '袖型', '0', '', 5),
(28, '领型', '0', '', 5);

-- --------------------------------------------------------

--
-- 表的结构 `sp_attrser`
--

CREATE TABLE IF NOT EXISTS `sp_attrser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '搜索属性id',
  `attr_id` mediumint(9) NOT NULL COMMENT '属性id',
  `attr_value` varchar(60) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `sp_attrser`
--

INSERT INTO `sp_attrser` (`id`, `attr_id`, `attr_value`) VALUES
(1, 19, '白色'),
(2, 19, '黑色'),
(3, 19, '粉红'),
(4, 19, '浅蓝'),
(5, 19, '紫色'),
(6, 18, 'XS'),
(7, 18, 'S'),
(8, 18, 'M'),
(9, 18, 'L'),
(10, 18, 'XL');

-- --------------------------------------------------------

--
-- 表的结构 `sp_brand`
--

CREATE TABLE IF NOT EXISTS `sp_brand` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) NOT NULL,
  `brand_logo` varchar(100) NOT NULL,
  `brand_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `sp_brand`
--

INSERT INTO `sp_brand` (`id`, `brand_name`, `brand_logo`, `brand_url`) VALUES
(27, '360', '', 'http://www.360.com'),
(28, '百度2', './Public/Uploads/Brand/57985e3785e5d.jpg', 'http://www.baidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `sp_cate`
--

CREATE TABLE IF NOT EXISTS `sp_cate` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `catename` varchar(30) NOT NULL COMMENT '栏目名称',
  `pid` smallint(5) NOT NULL DEFAULT '0' COMMENT '上级栏目id',
  `search_attr_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `sp_cate`
--

INSERT INTO `sp_cate` (`id`, `catename`, `pid`, `search_attr_id`) VALUES
(13, '针织背心', 12, '0'),
(12, '针织衫', 11, '0'),
(11, '男装', 0, '0'),
(14, '套头衫', 12, '0'),
(15, '开衫', 12, '0'),
(16, '内衣', 11, '0'),
(17, '女装', 0, '0'),
(18, 'T恤/POLO', 17, '0'),
(19, 'POLO衫', 18, '0'),
(20, '短袖T恤', 18, '0'),
(21, '长袖T恤', 18, '18,20,19'),
(22, '衬衫', 17, '0'),
(23, '运动户外', 0, '0'),
(24, '运动服', 23, '0'),
(25, '运动鞋', 23, '0'),
(26, '跑步鞋', 25, '0'),
(27, '休闲鞋', 25, '0'),
(28, '篮球鞋', 25, '0'),
(29, '帆布鞋', 25, '0'),
(30, '运动裤', 24, '0'),
(31, '健身服', 24, '0'),
(32, '运动套装', 24, '0'),
(33, '男装内页三级', 16, '0'),
(43, '测试栏目', 0, '12,13,18');

-- --------------------------------------------------------

--
-- 表的结构 `sp_category`
--

CREATE TABLE IF NOT EXISTS `sp_category` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章栏目id',
  `catename` varchar(45) NOT NULL COMMENT '文章栏目名称',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '文章栏目类型 0：普通栏目类型  1：帮助栏目类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `sp_category`
--

INSERT INTO `sp_category` (`id`, `catename`, `type`) VALUES
(5, '新手上路 ', 1),
(2, '购物常识', 1),
(4, '站内快讯', 0),
(6, '支付与配送', 1),
(7, '服务保证', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sp_config`
--

CREATE TABLE IF NOT EXISTS `sp_config` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '配置项id',
  `enname` varchar(30) NOT NULL COMMENT '配置英文名称',
  `cnname` varchar(30) NOT NULL COMMENT '配置中文名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配置类型 1：文本框 2：文本域 3：单选按钮 4：复选框 5：下拉菜单',
  `values` varchar(160) DEFAULT NULL COMMENT '配置可选值',
  `value` varchar(60) DEFAULT NULL COMMENT '配置选定值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `sp_config`
--

INSERT INTO `sp_config` (`id`, `enname`, `cnname`, `type`, `values`, `value`) VALUES
(1, 'sitename', '站点名称', 1, '', '美丽说'),
(3, 'goodsnum', '商品显示条数', 3, '10,12,14', '10'),
(4, 'banquan', '版权信息', 2, '', '美丽说的网站版权信息'),
(5, 'comment', '是否开启评论', 4, '是', '是'),
(6, 'delpro', '何时减库存', 5, '下单时,支付时,发货时', '下单时'),
(7, 'siteon', '站点是否开启', 4, '是', '是'),
(8, 'beian', '备案号', 1, '', '京ICP备11031139号'),
(9, 'searchkeywords', '热搜关键词', 2, '', '女装,男装,童装,内裤');

-- --------------------------------------------------------

--
-- 表的结构 `sp_goods`
--

CREATE TABLE IF NOT EXISTS `sp_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(30) NOT NULL COMMENT '商品名称',
  `goods_sn` char(16) NOT NULL COMMENT '商品编号',
  `original` varchar(100) NOT NULL COMMENT '原图',
  `sm_thumb` varchar(100) NOT NULL COMMENT '小缩略图',
  `mid_thumb` varchar(100) NOT NULL COMMENT '中缩略图',
  `max_thumb` varchar(100) NOT NULL COMMENT '大缩略图',
  `market_price` decimal(10,2) NOT NULL COMMENT '市场价格',
  `shop_price` decimal(10,2) NOT NULL COMMENT '本店价格',
  `onsale` enum('1','0') NOT NULL DEFAULT '1' COMMENT '是否上架',
  `cate_id` mediumint(9) NOT NULL COMMENT '所属栏目',
  `brand_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '所属品牌',
  `type_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '所属商品类型',
  `goods_desc` text NOT NULL COMMENT '详情描述',
  `goods_weight` decimal(10,2) NOT NULL COMMENT '商品重量',
  `weight_unit` enum('g','kg') NOT NULL DEFAULT 'g' COMMENT '重量单位',
  `addtime` int(10) NOT NULL DEFAULT '0' COMMENT '上架时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `shop_price` (`shop_price`,`cate_id`,`brand_id`,`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `sp_goods`
--

INSERT INTO `sp_goods` (`id`, `goods_name`, `goods_sn`, `original`, `sm_thumb`, `mid_thumb`, `max_thumb`, `market_price`, `shop_price`, `onsale`, `cate_id`, `brand_id`, `type_id`, `goods_desc`, `goods_weight`, `weight_unit`, `addtime`, `updatetime`) VALUES
(38, '测试商品内容页女装', '1482676166284342', './Public/Uploads/Goods/2016-12-25/585fd7c5d46a8.jpg', './Public/Uploads/Goods/2016-12-25/sm_585fd7c5d46a8.jpg', './Public/Uploads/Goods/2016-12-25/mid_585fd7c5d46a8.jpg', './Public/Uploads/Goods/2016-12-25/max_585fd7c5d46a8.jpg', '500.00', '350.00', '1', 21, 27, 5, '&lt;p&gt;&lt;img src=&quot;https://img.alicdn.com/imgextra/i1/2353424318/TB2SzM4spXXXXbeXpXXXXXXXXXX_%21%212353424318.jpg&quot; class=&quot;img-ks-lazyload&quot; align=&quot;absmiddle&quot;/&gt;&lt;img src=&quot;https://img.alicdn.com/imgextra/i1/2353424318/TB2gZ.SspXXXXcIXpXXXXXXXXXX_%21%212353424318.jpg&quot; class=&quot;img-ks-lazyload&quot; align=&quot;absmiddle&quot;/&gt;&lt;img src=&quot;https://img.alicdn.com/imgextra/i1/2353424318/TB2cfdbsFXXXXX.XpXXXXXXXXXX_%21%212353424318.jpg&quot; class=&quot;img-ks-lazyload&quot; align=&quot;absmiddle&quot;/&gt;&lt;img src=&quot;https://img.alicdn.com/imgextra/i3/2353424318/TB2Ku0vsFXXXXbxXXXXXXXXXXXX_%21%212353424318.jpg&quot; class=&quot;img-ks-lazyload&quot; align=&quot;absmiddle&quot;/&gt;&lt;img src=&quot;https://img.alicdn.com/imgextra/i2/2353424318/TB20DxZtXXXXXXoXXXXXXXXXXXX_%21%212353424318.jpg&quot; class=&quot;img-ks-lazyload&quot; align=&quot;absmiddle&quot;/&gt;&lt;img src=&quot;https://img.alicdn.com/imgextra/i4/2353424318/TB20yRksFXXXXc7XXXXXXXXXXXX_%21%212353424318.jpg&quot; class=&quot;img-ks-lazyload&quot; align=&quot;absmiddle&quot;/&gt;&lt;/p&gt;', '1.00', 'g', 0, 0),
(34, '女装长袖衫2', '1480778295566270', './Public/Uploads/Goods/2016-12-03/5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e23747429.jpg', '124.00', '100.00', '1', 21, 27, 5, '', '2000.00', 'g', 0, 1496549860),
(33, '女装长袖衫1', '1480778262301242', './Public/Uploads/Goods/2016-12-03/5842e21697205.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e21697205.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e21697205.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e21697205.jpg', '123.00', '120.00', '1', 21, 27, 0, '', '1.00', 'g', 0, 0),
(32, '男装开衫2', '1480778216665445', './Public/Uploads/Goods/2016-12-03/5842e1e841461.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e1e841461.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e1e841461.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e1e841461.jpg', '234.00', '132.00', '1', 15, 27, 0, '', '1.00', '', 0, 0),
(31, '男装开衫1', '1480778177687988', './Public/Uploads/Goods/2016-12-03/5842e1c1ce954.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e1c1ce954.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e1c1ce954.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e1c1ce954.jpg', '11111.00', '1221.00', '1', 11, 27, 0, '', '1.00', 'g', 0, 0),
(30, '针织背心3', '1480778111883110', './Public/Uploads/Goods/2016-12-03/5842e17fd9617.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e17fd9617.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e17fd9617.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e17fd9617.jpg', '2.00', '2.00', '1', 12, 27, 0, '', '2.00', 'g', 0, 0),
(39, '女装长袖衫3', '1480778295566270', './Public/Uploads/Goods/2016-12-03/5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e23747429.jpg', '124.00', '100.00', '1', 21, 27, 0, '', '2000.00', 'g', 0, 0),
(40, '女装长袖衫4', '1480778295566270', './Public/Uploads/Goods/2016-12-03/5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e23747429.jpg', '124.00', '100.00', '1', 21, 27, 0, '', '2000.00', 'g', 0, 0),
(41, '女装长袖衫2222', '1480778295566270', './Public/Uploads/Goods/2016-12-03/5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/sm_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/mid_5842e23747429.jpg', './Public/Uploads/Goods/2016-12-03/max_5842e23747429.jpg', '124.00', '20.00', '1', 21, 28, 0, '', '2000.00', 'g', 0, 0),
(42, '测试商品111', '1492662377516303', '', '', '', '', '500.00', '400.00', '1', 21, 28, 1, '&lt;p&gt;发送到发送到发&lt;br/&gt;&lt;/p&gt;', '100.00', 'g', 1492662377, 0),
(43, '测试商品222', '1492662480576443', '', '', '', '', '800.00', '700.00', '1', 21, 27, 0, '&lt;p&gt;啊实打实的烦&lt;br/&gt;&lt;/p&gt;', '70.00', 'g', 1492662480, 1492662504);

-- --------------------------------------------------------

--
-- 表的结构 `sp_goods_attr`
--

CREATE TABLE IF NOT EXISTS `sp_goods_attr` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `attr_id` mediumint(8) unsigned NOT NULL COMMENT '属性id',
  `attr_value` varchar(150) NOT NULL COMMENT '属性值',
  `attr_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '属性价格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=219 ;

--
-- 转存表中的数据 `sp_goods_attr`
--

INSERT INTO `sp_goods_attr` (`id`, `goods_id`, `attr_id`, `attr_value`, `attr_price`) VALUES
(19, 34, 13, '20', '0.00'),
(18, 34, 12, '黄色', '40.00'),
(17, 34, 12, '黑色', '30.00'),
(16, 34, 12, '白色', '20.00'),
(15, 34, 12, '红色', '10.00'),
(20, 34, 14, '100', '0.00'),
(21, 34, 15, '0000', '0.00'),
(29, 2, 13, '20', '0.00'),
(28, 2, 12, '白色', '0.00'),
(27, 2, 12, '红色', '0.00'),
(30, 2, 14, '40', '0.00'),
(31, 2, 15, '', '0.00'),
(32, 3, 12, '红色', '50.00'),
(33, 3, 12, '白色', '0.00'),
(34, 3, 12, '黄色', '0.00'),
(35, 3, 13, '20', '0.00'),
(36, 3, 14, '80', '0.00'),
(37, 3, 15, '000', '0.00'),
(38, 3, 17, '4G', '50.00'),
(39, 3, 17, '8G', '0.00'),
(40, 3, 17, '16G', '0.00'),
(41, 4, 12, '红色', '0.00'),
(42, 4, 12, '黑色', '0.00'),
(43, 4, 13, '请选择', '0.00'),
(44, 4, 14, '', '0.00'),
(45, 4, 15, '', '0.00'),
(46, 4, 17, '4G', '0.00'),
(47, 4, 17, '8G', '0.00'),
(48, 4, 17, '16G', '0.00'),
(49, 7, 12, '红色', '0.00'),
(50, 7, 12, '白色', '10.00'),
(51, 7, 13, '20', '0.00'),
(52, 7, 14, '50', '0.00'),
(53, 7, 15, '00', '0.00'),
(54, 7, 17, '4G', '0.00'),
(55, 7, 17, '8G', '10.00'),
(64, 10, 13, '20', '0.00'),
(63, 10, 12, '白色', '20.00'),
(62, 10, 12, '黄色', '30.00'),
(61, 10, 12, '红色', '10.00'),
(65, 10, 14, '100', '0.00'),
(66, 10, 15, '000', '0.00'),
(67, 10, 17, '4G', '10.00'),
(68, 10, 17, '8G', '30.00'),
(69, 11, 12, '红色', '10.00'),
(70, 11, 12, '白色', '20.00'),
(71, 11, 12, '黑色', '30.00'),
(72, 11, 13, '10', '0.00'),
(73, 11, 14, '20', '0.00'),
(74, 11, 15, '.0', '0.00'),
(75, 11, 17, '4G', '10.00'),
(76, 11, 17, '8G', '20.00'),
(77, 12, 12, '红色', '10.00'),
(78, 12, 12, '白色', '30.00'),
(79, 12, 11, '10', '10.00'),
(80, 12, 10, '3', '10.00'),
(81, 12, 9, '33', '10.00'),
(82, 12, 17, '4G', '10.00'),
(83, 12, 17, '8G', '30.00'),
(84, 13, 12, '红色', '10.00'),
(85, 13, 12, '白色', '20.00'),
(86, 13, 11, '10', '10.00'),
(87, 13, 10, '22', '10.00'),
(88, 13, 9, '333', '10.00'),
(89, 13, 17, '4G', '10.00'),
(90, 13, 17, '8G', '20.00'),
(91, 13, 17, '16G', '10.00'),
(92, 14, 12, '红色', '30.00'),
(93, 14, 12, '白色', '40.00'),
(94, 14, 12, '黑色', '50.00'),
(95, 14, 11, '20', '30.00'),
(96, 14, 10, '50', '30.00'),
(97, 14, 9, '1000', '30.00'),
(98, 14, 17, '4G', '30.00'),
(99, 14, 17, '8G', '40.00'),
(100, 14, 17, '16G', '50.00'),
(101, 15, 12, '红色', '10.00'),
(102, 15, 12, '白色', '20.00'),
(103, 15, 11, '10', '10.00'),
(104, 15, 10, '22', '10.00'),
(105, 15, 9, '1000', '10.00'),
(106, 15, 17, '4G', '10.00'),
(107, 15, 17, '8G', '20.00'),
(108, 16, 12, '红色', '10.00'),
(109, 16, 12, '白色', '20.00'),
(110, 16, 12, '黑色', '30.00'),
(111, 16, 13, '20', '0.00'),
(112, 16, 14, '33', '0.00'),
(113, 16, 15, '333', '0.00'),
(114, 16, 17, '4G', '10.00'),
(115, 16, 17, '8G', '20.00'),
(116, 17, 12, '红色', '30.00'),
(117, 17, 12, '白色', '40.00'),
(118, 17, 12, '黑色', '50.00'),
(119, 17, 11, '10', '30.00'),
(120, 17, 10, '45', '30.00'),
(121, 17, 9, '55', '30.00'),
(122, 17, 17, '4G', '30.00'),
(123, 17, 17, '8G', '40.00'),
(124, 18, 12, '红色', '20.00'),
(125, 18, 12, '白色', '40.00'),
(126, 18, 12, '黑色', '50.00'),
(127, 18, 11, '10', '20.00'),
(128, 18, 10, '55', '20.00'),
(129, 18, 9, '66', '20.00'),
(130, 18, 17, '4G', '20.00'),
(131, 18, 17, '8G', '40.00'),
(132, 18, 17, '16G', '50.00'),
(133, 19, 12, '红色', '10.00'),
(134, 19, 12, '白色', '20.00'),
(135, 19, 12, '黑色', '30.00'),
(136, 19, 11, '10', '10.00'),
(137, 19, 10, '40', '10.00'),
(138, 19, 9, '000', '10.00'),
(139, 19, 17, '4G', '10.00'),
(140, 19, 17, '8G', '20.00'),
(141, 19, 17, '16G', '30.00'),
(142, 20, 12, '红色', '10.00'),
(143, 20, 12, '白色', '20.00'),
(144, 20, 12, '黑色', '40.00'),
(145, 20, 11, '10', '0.00'),
(146, 20, 10, '111', '0.00'),
(147, 20, 9, '222', '0.00'),
(148, 20, 17, '4G', '50.00'),
(149, 20, 17, '8G', '60.00'),
(150, 20, 17, '16G', '70.00'),
(151, 21, 12, '红色', '10.00'),
(152, 21, 12, '白色', '20.00'),
(153, 21, 12, '黑色', '30.00'),
(154, 21, 13, '10', '0.00'),
(155, 21, 14, '111', '0.00'),
(156, 21, 15, '222', '0.00'),
(157, 21, 17, '4G', '10.00'),
(158, 21, 17, '8G', '20.00'),
(159, 21, 17, '16G', '30.00'),
(160, 22, 12, '红色', '10.00'),
(161, 22, 12, '白色', '20.00'),
(173, 23, 12, '黑色', '10.00'),
(163, 22, 11, '10', '0.00'),
(164, 22, 10, '111', '0.00'),
(165, 22, 9, '222', '0.00'),
(166, 22, 17, '4G', '40.00'),
(167, 22, 17, '8G', '50.00'),
(174, 23, 12, '白色', '20.00'),
(172, 22, 12, '黄色', '30.00'),
(175, 23, 12, '黄色', '30.00'),
(176, 23, 11, '10', '0.00'),
(177, 23, 10, '10', '0.00'),
(178, 23, 9, '30', '0.00'),
(179, 23, 17, '4G', '10.00'),
(180, 23, 17, '8G', '30.00'),
(183, 38, 18, 'XS', '10.00'),
(182, 23, 17, '16G', '50.00'),
(186, 38, 18, 'S', '20.00'),
(185, 38, 18, 'M', '0.00'),
(184, 38, 18, 'L', '0.00'),
(187, 38, 19, '白色', '0.00'),
(188, 38, 19, '浅蓝', '-30.00'),
(189, 38, 19, '粉红', '0.00'),
(190, 38, 19, '黑色', '0.00'),
(191, 38, 20, '聚酯纤维62% 棉38%', '0.00'),
(192, 38, 21, '纯电商(只在线上销售)', '0.00'),
(193, 38, 22, 'M002', '0.00'),
(194, 38, 23, '修身', '0.00'),
(195, 38, 24, '其他', '0.00'),
(196, 38, 25, '常规款', '0.00'),
(197, 38, 26, '长袖', '0.00'),
(198, 38, 27, '常规', '0.00'),
(199, 38, 28, '方领', '0.00'),
(200, 38, 18, 'XL', '-10.00'),
(201, 42, 12, '红色', '10.00'),
(202, 42, 11, '请选择', '0.00'),
(203, 42, 10, '10', '0.00'),
(204, 42, 9, 'saa', '0.00'),
(205, 42, 17, '请选择', '0.00'),
(206, 34, 18, 'XS', '0.00'),
(207, 34, 18, 'S', '0.00'),
(208, 34, 19, '白色', '0.00'),
(209, 34, 19, '黑色', '0.00'),
(210, 34, 20, '', '0.00'),
(211, 34, 21, '', '0.00'),
(212, 34, 22, '', '0.00'),
(213, 34, 23, '', '0.00'),
(214, 34, 24, '', '0.00'),
(215, 34, 25, '', '0.00'),
(216, 34, 26, '', '0.00'),
(217, 34, 27, '', '0.00'),
(218, 34, 28, '', '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `sp_goods_pic`
--

CREATE TABLE IF NOT EXISTS `sp_goods_pic` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `original` varchar(100) NOT NULL COMMENT '商品原图',
  `max_thumb` varchar(100) NOT NULL COMMENT '大缩略图',
  `sm_thumb` varchar(100) NOT NULL COMMENT '小缩略图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `sp_goods_pic`
--

INSERT INTO `sp_goods_pic` (`id`, `goods_id`, `original`, `max_thumb`, `sm_thumb`) VALUES
(9, 8, './Public/Uploads/Goods/2016-10-15/5801cf5e34917.png', './Public/Uploads/Goods/2016-10-15/max_5801cf5e34917.png', './Public/Uploads/Goods/2016-10-15/sm_5801cf5e34917.png'),
(10, 8, './Public/Uploads/Goods/2016-10-15/5801cf5e350e7.jpg', './Public/Uploads/Goods/2016-10-15/max_5801cf5e350e7.jpg', './Public/Uploads/Goods/2016-10-15/sm_5801cf5e350e7.jpg'),
(11, 38, './Public/Uploads/Goods/2016-12-25/585fd7c613cac.jpg', './Public/Uploads/Goods/2016-12-25/max_585fd7c613cac.jpg', './Public/Uploads/Goods/2016-12-25/sm_585fd7c613cac.jpg'),
(12, 38, './Public/Uploads/Goods/2016-12-25/585fd7c61447c.jpg', './Public/Uploads/Goods/2016-12-25/max_585fd7c61447c.jpg', './Public/Uploads/Goods/2016-12-25/sm_585fd7c61447c.jpg'),
(13, 38, './Public/Uploads/Goods/2016-12-25/585fd7c61ffff.jpg', './Public/Uploads/Goods/2016-12-25/max_585fd7c61ffff.jpg', './Public/Uploads/Goods/2016-12-25/sm_585fd7c61ffff.jpg'),
(14, 38, './Public/Uploads/Goods/2016-12-25/585fd7c620f9f.jpg', './Public/Uploads/Goods/2016-12-25/max_585fd7c620f9f.jpg', './Public/Uploads/Goods/2016-12-25/sm_585fd7c620f9f.jpg'),
(15, 38, './Public/Uploads/Goods/2016-12-25/585fd7c623e80.jpg', './Public/Uploads/Goods/2016-12-25/max_585fd7c623e80.jpg', './Public/Uploads/Goods/2016-12-25/sm_585fd7c623e80.jpg'),
(16, 38, './Public/Uploads/Goods/2016-12-25/585fd7c624650.jpg', './Public/Uploads/Goods/2016-12-25/max_585fd7c624650.jpg', './Public/Uploads/Goods/2016-12-25/sm_585fd7c624650.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `sp_member`
--

CREATE TABLE IF NOT EXISTS `sp_member` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `username` varchar(30) NOT NULL COMMENT '用户名称',
  `password` char(32) NOT NULL COMMENT '用户密码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `check_mail` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已验证 0：未验证 1：已验证',
  `mail_str` varchar(32) NOT NULL COMMENT '邮箱验证字符串',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:保密 1：男 2：女',
  `points` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `regtime` int(10) NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `sp_member`
--

INSERT INTO `sp_member` (`id`, `username`, `password`, `email`, `check_mail`, `mail_str`, `sex`, `points`, `money`, `regtime`) VALUES
(1, 'tongpan', 'e10adc3949ba59abbe56e057f20f883e', 'tongpan0@163.com', 0, '', 0, 0, '5565.00', 0),
(2, 'tongnian', 'e10adc3949ba59abbe56e057f20f883e', 'tongpan0@163.com', 1, '', 0, 0, '0.00', 1482393811),
(3, 'tongpan234', 'e10adc3949ba59abbe56e057f20f883e', 'tongpan234@163.com', 0, 'f7a8dcdea64660414e408d3fbfc2d9c3', 0, 15000, '0.00', 1482398810),
(4, 'tongpan123', 'e10adc3949ba59abbe56e057f20f883e', 'tognpan111@163.com', 0, '44764fa001a26e529657a73bf5eeb37b', 0, 0, '0.00', 1482399142),
(5, 'tongpan000', 'e10adc3949ba59abbe56e057f20f883e', 'tongpan000@163.com', 0, 'b0c759fc411983b0a921acb13fb809bc', 0, 0, '0.00', 1482412442);

-- --------------------------------------------------------

--
-- 表的结构 `sp_member_level`
--

CREATE TABLE IF NOT EXISTS `sp_member_level` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `level_name` varchar(20) NOT NULL COMMENT '等级名称',
  `points_min` int(10) unsigned NOT NULL COMMENT '积分下限',
  `points_max` int(10) unsigned NOT NULL COMMENT '积分上限',
  `rate` tinyint(3) unsigned NOT NULL COMMENT '折扣率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `sp_member_level`
--

INSERT INTO `sp_member_level` (`id`, `level_name`, `points_min`, `points_max`, `rate`) VALUES
(1, '注册会员', 0, 10000, 100),
(3, '中级会员', 10001, 30000, 95),
(4, '高级会员', 30001, 70000, 80),
(5, 'vip会员', 70001, 100000, 70);

-- --------------------------------------------------------

--
-- 表的结构 `sp_member_price`
--

CREATE TABLE IF NOT EXISTS `sp_member_price` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL COMMENT '会员等级价格',
  `level_id` mediumint(9) NOT NULL COMMENT '等级id',
  `goods_id` mediumint(9) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- 转存表中的数据 `sp_member_price`
--

INSERT INTO `sp_member_price` (`id`, `price`, `level_id`, `goods_id`) VALUES
(5, '1.00', 1, 10),
(6, '2.00', 3, 10),
(7, '3.00', 4, 10),
(8, '4.00', 5, 10),
(16, '70.00', 5, 2),
(15, '80.00', 4, 2),
(14, '90.00', 3, 2),
(13, '100.00', 1, 2),
(46, '3.00', 5, 5),
(45, '2.00', 4, 5),
(44, '4.00', 3, 5),
(43, '1.00', 1, 5),
(47, '100.00', 1, 7),
(48, '2.00', 3, 7),
(49, '3.00', 4, 7),
(50, '4.00', 5, 7),
(58, '4.00', 5, 8),
(57, '344.00', 4, 8),
(56, '2.00', 3, 8),
(55, '1.00', 1, 8),
(90, '256.00', 5, 38),
(89, '330.00', 3, 38),
(88, '350.00', 1, 38);

-- --------------------------------------------------------

--
-- 表的结构 `sp_nav`
--

CREATE TABLE IF NOT EXISTS `sp_nav` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '导航id',
  `nav_name` varchar(30) NOT NULL COMMENT '导航名称',
  `nav_url` varchar(150) NOT NULL COMMENT '导航地址',
  `nav_blank` tinyint(1) NOT NULL DEFAULT '1' COMMENT '导航打开方式 0：当前页打开 1：新页面打开',
  `nav_pos` tinyint(1) NOT NULL DEFAULT '2' COMMENT '导航位置 1：顶部 2：中间 3：底部',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `sp_nav`
--

INSERT INTO `sp_nav` (`id`, `nav_name`, `nav_url`, `nav_blank`, `nav_pos`) VALUES
(4, '女装', '/', 0, 2),
(2, '男装', '/', 0, 2),
(3, '裤子', '/', 1, 2),
(5, '品牌专区', '/', 1, 2),
(6, '团购', '/', 1, 2),
(7, '登录', '/', 1, 1),
(8, '注册', '/', 1, 1),
(9, '我的账户', '/', 1, 1),
(10, '我的订单', '/', 1, 1),
(11, '免责条款', '/', 1, 3),
(12, '隐私保护', '/', 1, 3),
(13, '联系我们', '/', 1, 3),
(14, '公司简介', '/', 1, 3),
(15, '配送方式', '/', 1, 3);

-- --------------------------------------------------------

--
-- 表的结构 `sp_order`
--

CREATE TABLE IF NOT EXISTS `sp_order` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `sn` char(16) NOT NULL COMMENT '订单编号',
  `addtime` int(11) NOT NULL COMMENT '下单时间',
  `shr` varchar(30) NOT NULL COMMENT '收货人',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(30) NOT NULL COMMENT '市',
  `county` varchar(60) NOT NULL COMMENT '县',
  `adress` varchar(255) NOT NULL COMMENT '详细地址',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `mid` mediumint(9) NOT NULL COMMENT '下单会员id',
  `peisong` varchar(30) NOT NULL COMMENT '配送方式',
  `pay` varchar(30) NOT NULL COMMENT '支付方式',
  `gtprice` decimal(10,2) NOT NULL COMMENT '商品总价',
  `yprice` decimal(10,2) NOT NULL COMMENT '运费价格',
  `tprice` decimal(10,2) NOT NULL COMMENT '订单总价',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未确认，1：已确认，2：申请退货，3：退货成功',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未支付，1：已支付',
  `fh_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：未发货，1：已发货，2：已收货',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `sp_order`
--

INSERT INTO `sp_order` (`id`, `sn`, `addtime`, `shr`, `province`, `city`, `county`, `adress`, `phone`, `mid`, `peisong`, `pay`, `gtprice`, `yprice`, `tprice`, `order_status`, `pay_status`, `fh_status`) VALUES
(10, '1491314464210693', 1491314464, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '申通', '支付宝', '340.00', '20.00', '360.00', 0, 0, 0),
(9, '1491314329898980', 1491314329, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '申通', '支付宝', '340.00', '20.00', '360.00', 0, 0, 0),
(8, '1491309122174831', 1491309122, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '顺丰', '余额', '4420.00', '15.00', '4435.00', 0, 1, 0),
(7, '1490867034378526', 1490867034, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '顺丰', '支付宝', '3060.00', '15.00', '3075.00', 0, 0, 0),
(6, '1490866316882568', 1490866316, '童攀', '河南省', '郑州市', '金水区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '顺丰', '支付宝', '2720.00', '15.00', '2735.00', 0, 0, 0),
(11, '1491314541515814', 1491314541, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '顺丰', '支付宝', '340.00', '15.00', '355.00', 0, 0, 0),
(12, '1491314732838758', 1491314732, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '顺丰', '支付宝', '340.00', '15.00', '355.00', 0, 0, 0),
(13, '1491314859249782', 1491314859, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '顺丰', '支付宝', '340.00', '15.00', '355.00', 0, 0, 0),
(14, '1491315066510280', 1491315066, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '申通', '支付宝', '340.00', '20.00', '360.00', 0, 0, 0),
(15, '1491315149423746', 1491315149, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1, '顺丰', '支付宝', '340.00', '15.00', '355.00', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sp_order_goods`
--

CREATE TABLE IF NOT EXISTS `sp_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品订单id',
  `goods_id` mediumint(9) NOT NULL COMMENT '商品id',
  `goods_name` varchar(150) NOT NULL COMMENT '商品名称',
  `goods_attr_id` varchar(60) NOT NULL COMMENT '属性id字符串',
  `goods_attr_str` varchar(150) NOT NULL COMMENT '属性字符串',
  `goods_price` decimal(10,2) NOT NULL COMMENT '本店价',
  `goods_marktprice` decimal(10,2) NOT NULL COMMENT '市场价',
  `goods_num` smallint(6) NOT NULL COMMENT '商品数量',
  `order_id` mediumint(9) NOT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `sp_order_goods`
--

INSERT INTO `sp_order_goods` (`id`, `goods_id`, `goods_name`, `goods_attr_id`, `goods_attr_str`, `goods_price`, `goods_marktprice`, `goods_num`, `order_id`) VALUES
(24, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 1, 15),
(23, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 1, 14),
(22, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 1, 13),
(21, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 1, 12),
(20, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 1, 11),
(19, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 1, 10),
(18, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 1, 9),
(17, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 13, 8),
(16, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 9, 7),
(15, 38, '测试商品内容页女装', '190,200', '衬衫颜色:黑色【￥0.00】<br />尺寸:XL【￥-10.00】', '340.00', '490.00', 8, 6);

-- --------------------------------------------------------

--
-- 表的结构 `sp_product`
--

CREATE TABLE IF NOT EXISTS `sp_product` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(9) NOT NULL COMMENT '商品id',
  `goods_number` int(11) NOT NULL COMMENT '库存量',
  `goods_attr` varchar(150) NOT NULL COMMENT '库存属性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `sp_product`
--

INSERT INTO `sp_product` (`id`, `goods_id`, `goods_number`, `goods_attr`) VALUES
(8, 4, 400, '42,46'),
(7, 4, 300, '41,48'),
(6, 4, 200, '41,47'),
(5, 4, 100, '41,46'),
(9, 4, 500, '42,48'),
(34, 3, 300, '33,39'),
(33, 3, 200, '33,38'),
(32, 3, 400, '34,38'),
(31, 3, 100, '32,38'),
(59, 34, 100, '17'),
(58, 38, 100, '183,190'),
(57, 38, 3, '183,188'),
(56, 38, 86, '186,188'),
(55, 38, 18, '186,187'),
(54, 38, 273, '190,200'),
(53, 38, 30, '183,187'),
(60, 34, 35, '16'),
(61, 34, 60, '18');

-- --------------------------------------------------------

--
-- 表的结构 `sp_recpos`
--

CREATE TABLE IF NOT EXISTS `sp_recpos` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `recname` varchar(30) NOT NULL COMMENT '推荐位名称',
  `rectype` tinyint(1) NOT NULL DEFAULT '1' COMMENT '推荐位类型  1：商品推荐位 2：分类推荐位',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `sp_recpos`
--

INSERT INTO `sp_recpos` (`id`, `recname`, `rectype`) VALUES
(5, '特价商品', 1),
(3, '精品推荐', 1),
(4, '精品女装', 2),
(6, '精品男装', 2),
(7, '新品上架', 1),
(8, '首页大分类', 2),
(9, '首页大分类商品', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sp_recvalue`
--

CREATE TABLE IF NOT EXISTS `sp_recvalue` (
  `valueid` mediumint(9) NOT NULL,
  `recid` mediumint(9) NOT NULL,
  `rectype` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_recvalue`
--

INSERT INTO `sp_recvalue` (`valueid`, `recid`, `rectype`) VALUES
(34, 9, 1),
(11, 8, 2),
(17, 8, 2),
(33, 9, 1),
(28, 7, 1),
(28, 3, 1),
(38, 9, 1),
(38, 3, 1),
(30, 9, 1),
(30, 7, 1),
(43, 6, 2),
(31, 3, 1),
(43, 4, 2),
(31, 5, 1),
(32, 7, 1),
(32, 5, 1),
(33, 7, 1),
(34, 7, 1),
(34, 3, 1),
(33, 5, 1),
(28, 9, 1),
(38, 5, 1),
(30, 5, 1),
(13, 8, 2);

-- --------------------------------------------------------

--
-- 表的结构 `sp_shrinfo`
--

CREATE TABLE IF NOT EXISTS `sp_shrinfo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '收货人id',
  `shr` varchar(30) NOT NULL COMMENT '姓名',
  `province` varchar(50) NOT NULL COMMENT '省',
  `city` varchar(50) NOT NULL COMMENT '市',
  `county` varchar(60) NOT NULL COMMENT '县',
  `adress` varchar(255) NOT NULL COMMENT '详细地址',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `mid` mediumint(9) NOT NULL COMMENT '会员id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `sp_shrinfo`
--

INSERT INTO `sp_shrinfo` (`id`, `shr`, `province`, `city`, `county`, `adress`, `phone`, `mid`) VALUES
(1, '童攀', '天津市', '天津市', '河东区', '河南省 郑州市 金水区 邮编：476000', '18336935555', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sp_type`
--

CREATE TABLE IF NOT EXISTS `sp_type` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `sp_type`
--

INSERT INTO `sp_type` (`id`, `type_name`) VALUES
(1, '手机'),
(4, '书'),
(5, '女式衬衫');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
