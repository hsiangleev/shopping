-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-06-14 09:25:30
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- 表的结构 `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `content` char(128) NOT NULL,
  `a` int(10) NOT NULL,
  `b` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `info`
--

INSERT INTO `info` (`content`, `a`, `b`) VALUES
('深空灰,套餐一,32GB,2', 1, 0),
('深空灰,套餐二,64GB,1', 3, 1),
('红色特别版,套餐二,64GB,1', 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `username` char(16) NOT NULL,
  `password` char(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `telphone` tinyint(11) NOT NULL,
  `adress` char(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `person`
--

INSERT INTO `person` (`username`, `password`, `name`, `telphone`, `adress`) VALUES
('lee', '123123', '0', 0, ''),
('qqqq', '123123', '', 0, ''),
('tom', '123456', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `phone2`
--

CREATE TABLE IF NOT EXISTS `phone2` (
  `iphone` text NOT NULL,
  `huawei` text NOT NULL,
  `oppoa` text NOT NULL,
  `xiaomi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `phone2`
--

INSERT INTO `phone2` (`iphone`, `huawei`, `oppoa`, `xiaomi`) VALUES
('{\r\n		"url":"../images/iphone6.jpg",\r\n		"text":"iphone6",\r\n		"price":"3666",\r\n		"h1":"Apple/苹果 iPhone 6 4.7寸手机 苹果6 iphone6  ",\r\n		"h2":"信誉诚信保障！每一代iPhone 首批都抢先开售, 新iphone特性：新增亮面黑,压力感应HOME键,ip67级防水防尘,1200w像素光学防抖,全新A10处理器,续航提升,立体扬声器 ,lightning耳机接入方式,双摄像头。标配的是近期激活,套餐一的是后封未激活,大陆行的是原封未激活",\r\n		"color":"金色,灰色,玫瑰金,银色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/huaweiv9.jpg",\r\n		"text":"华为v9",\r\n		"price":"2899",\r\n		"h1":"华为,荣耀v9   4G手机   ",\r\n		"h2":"  双卡双待 铂光金 全网通(6GB RAM+64GB ROM)  商品毛重：400.00g  系统：安卓（Android）  运行内存：6GB  前置摄像头像素：800万-1599万  购买方式：其他  后置摄像头像素：后置双摄像头,1200万-1999万  电池容量：4000mAh-5999mAh热点：后置双摄像头",\r\n		"color":"金色,银色,深空灰",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/oppor9s.jpg",\r\n		"text":"oppo r9s",\r\n		"price":"2599",\r\n		"h1":"OPPO R9s 5.5寸手机  ",\r\n		"h2":"这一次,OPPO R9s系列全新设计的摄像头,会让你真正爱上拍照。这颗出众的摄像头采用了OPPO与索尼联合研发的1600万像素IMX398传感器,突破性地改善了手机拍照容易糊的难题,更有F1.7超大光圈、EIS/OIS+防抖*, 轻松拍下以往难以捕捉的瞬间。OPPO R9s采用新一代高通骁龙八核处理器,运行内存分别为4GB与6GB,数据处理更高效。更有64GB超大内存,新升级的学习型指纹识别系统,更好用的全网通3.0,硬件内置的WiFi放大器,强大的配置带来的,是更顺手的操作体验。",\r\n		"color":"金色,玫瑰金,黑色",\r\n		"type":"官方标配",\r\n		"high":"64GB"\r\n	}', '{\r\n		"url":"../images/xiaomimax.jpg",\r\n		"text":"小米max 2   4g手机",\r\n		"price":" 1999",\r\n		"h1":"小米手机  为发烧而生 ",\r\n		"h2":"信誉诚信保障！为发烧而生  7天包退,一月包换,产品质量包您满意,采用全新的骁龙八核处理器,运行速度超快 ",\r\n		"color":"白色,金色,磨砂黑,亮黑色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}'),
('{\r\n		"url":"../images/iphone6s.jpg",\r\n		"text":"iphone6s puls",\r\n		"price":"5199",\r\n		"h1":"Apple/苹果 iPhone6s plus 4.7寸手机 苹果6s plus  ",\r\n		"h2":"信誉诚信保障！每一代iPhone 首批都抢先开售, 新iphone特性：新增亮面黑,压力感应HOME键,ip67级防水防尘,1200w像素光学防抖,全新A10处理器,续航提升,立体扬声器 ,lightning耳机接入方式,双摄像头。标配的是近期激活,套餐一的是后封未激活,大陆行的是原封未激活",\r\n		"color":"金色,银色,深空灰,玫瑰金",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/rongyao8.jpg",\r\n		"text":"华为 荣耀8 青春版",\r\n		"price":"1548",\r\n		"h1":"华为,荣耀8 青春版  4G手机   ",\r\n		"h2":"  双卡双待 铂光金 全网通(6GB RAM+64GB ROM)  商品毛重：400.00g  系统：安卓（Android）  运行内存：6GB  前置摄像头像素：800万-1599万  购买方式：其他  后置摄像头像素：后置双摄像头,1200万-1999万  电池容量：4000mAh-5999mAh热点：后置双摄像头",\r\n		"color":"金色,银色,深空灰",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/oppor9splus.jpg",\r\n		"text":"oppo r9s plus",\r\n		"price":"3499",\r\n		"h1":"OPPO  R9splus 6寸手机  ",\r\n		"h2":"R9s Plus电池容量达到4000mAh,搭载广受好评的VOOC闪充技术,充电5分钟,通话2小时。创新研发的CPU智能变频技术,大任务用大核,小任务用小核,耗电更少,再度提升续航能力。",\r\n		"color":"金色,玫瑰金,黑色",\r\n		"type":"官方标配",\r\n		"high":"64GB"\r\n	}', '{\r\n		"url":"../images/xiaominote4x.jpg",\r\n		"text":"小米note 4x   4g手机",\r\n		"price":" 799",\r\n		"h1":"小米手机  为发烧而生 ",\r\n		"h2":"信誉诚信保障！为发烧而生  7天包退,一月包换,产品质量包您满意,采用全新的骁龙八核处理器,运行速度超快 ",\r\n		"color":"白色,金色,磨砂黑,亮黑色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}'),
('{\r\n		"url":"../images/iphone6p.jpg",\r\n		"text":"iphone6 puls",\r\n		"price":"3488",\r\n		"h1":"Apple/苹果 iPhone6plus 4.7寸手机 苹果6 iphone6  ",\r\n		"h2":"信誉诚信保障！每一代iPhone 首批都抢先开售, 新iphone特性：新增亮面黑,压力感应HOME键,ip67级防水防尘,1200w像素光学防抖,全新A10处理器,续航提升,立体扬声器 ,lightning耳机接入方式,双摄像头。标配的是近期激活,套餐一的是后封未激活,大陆行的是原封未激活",\r\n		"color":"金色,深空灰,银色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/huaweip9.jpg",\r\n		"text":"华为 荣耀6x",\r\n		"price":"1299",\r\n		"h1":"华为,荣耀6x 4G手机   ",\r\n		"h2":"  双卡双待 铂光金 全网通(6GB RAM+64GB ROM)  商品毛重：400.00g  系统：安卓（Android）  运行内存：6GB  前置摄像头像素：800万-1599万  购买方式：其他  后置摄像头像素：后置双摄像头,1200万-1999万  电池容量：4000mAh-5999mAh热点：后置双摄像头",\r\n		"color":"金色,银色,深空灰",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/OPPOA57.jpg",\r\n		"text":"oppo A57",\r\n		"price":"1599",\r\n		"h1":"OPPO  A57 5.2寸手机  ",\r\n		"h2":"這一次,热卖爆款A57迎来了全新的时尚配色--哑光黑。经过精细打磨,黑色机身散发出高档的金属质感,搭配正面的息屏美学设计,整部手机浑然一体,越看越耐看。A57搭载旗舰级的1600万像素前置摄像头,全新的额美颜4.0功能,画质更好,细节更细腻,即使是弱光时,也能拍出明亮动人的自拍大片。",\r\n		"color":"金色,玫瑰金",\r\n		"type":"官方标配",\r\n		"high":"32GB"\r\n	}', '{\r\n		"url":"../images/xiaomi4a.jpg",\r\n		"text":"小米4a  4g手机",\r\n		"price":" 599",\r\n		"h1":"小米手机  为发烧而生 ",\r\n		"h2":"信誉诚信保障！为发烧而生  7天包退,一月包换,产品质量包您满意,采用全新的骁龙八核处理器,运行速度超快 ",\r\n		"color":"白色,金色,磨砂黑,亮黑色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}'),
('{\r\n		"url":"../images/iphone7.jpg",\r\n		"text":"iphone7",\r\n		"price":"5699",\r\n		"h1":"Apple/苹果 iPhone7 4.7寸手机 苹果7",\r\n		"h2":"信誉诚信保障！每一代iPhone 首批都抢先开售, 新iphone特性：新增亮面黑,压力感应HOME键,ip67级防水防尘,1200w像素光学防抖,全新A10处理器,续航提升,立体扬声器 ,lightning耳机接入方式,双摄像头。标配的是近期激活,套餐一的是后封未激活,大陆行的是原封未激活",\r\n		"color":"金色,银色,亮黑色,红色特别版",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/huawei6a.jpg",\r\n		"text":"华为 畅玩6a",\r\n		"price":"899",\r\n		"h1":"华为,荣耀6a 4G手机   ",\r\n		"h2":"  双卡双待 铂光金 全网通(6GB RAM+64GB ROM)  商品毛重：400.00g  系统：安卓（Android）  运行内存：6GB  前置摄像头像素：800万-1599万  购买方式：其他  后置摄像头像素：后置双摄像头,1200万-1999万  电池容量：4000mAh-5999mAh热点：后置双摄像头",\r\n		"color":"金色,银色,深空灰",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/OPPOA59s.jpg",\r\n		"text":"oppo A59s",\r\n		"price":"1999",\r\n		"h1":"OPPO  A59s 5.5寸手机  ",\r\n		"h2":"A59s采用金属机身,质感出众。机身设计简洁大气,手感出众。金属后盖搭配精细锆砂,两条纤细生辉的流光遍游走其上,仿佛是光的天然雕刻,细腻而灵动,令你一见倾心,百看不厌。采用4GB超大运行内存,可同时运行更多APP,运行速度更快,手机不容易卡顿。32GB存储内存,支持128GB内存扩展,可将一整部电视剧装进手机,出门在外随时娱乐。",\r\n		"color":"金色,玫瑰金",\r\n		"type":"官方标配",\r\n		"high":"32GB"\r\n	}', '{\r\n		"url":"../images/hongmi4x.jpg",\r\n		"text":"小米 红米4x 4g手机",\r\n		"price":" 699",\r\n		"h1":"小米手机  为发烧而生 ",\r\n		"h2":"信誉诚信保障！为发烧而生  7天包退,一月包换,产品质量包您满意,采用全新的骁龙八核处理器,运行速度超快 ",\r\n		"color":"白色,金色,磨砂黑,亮黑色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}'),
('{\r\n		"url":"../images/iphone7plus.jpg",\r\n		"text":"iphone7plus",\r\n		"price":"5748",\r\n		"h1":"Apple/苹果 iPhone7plus 4.7寸手机 苹果7plus",\r\n		"h2":"信誉诚信保障！每一代iPhone 首批都抢先开售, 新iphone特性：新增亮面黑,压力感应HOME键,ip67级防水防尘,1200w像素光学防抖,全新A10处理器,续航提升,立体扬声器 ,lightning耳机接入方式,双摄像头。标配的是近期激活,套餐一的是后封未激活,大陆行的是原封未激活",\r\n		"color":"金色,银色,亮黑色,红色特别版",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/huawei6x.jpg",\r\n		"text":"华为 p9",\r\n		"price":"2499",\r\n		"h1":"华为,荣耀p9 4G手机   ",\r\n		"h2":"  双卡双待 铂光金 全网通(6GB RAM+64GB ROM)  商品毛重：400.00g  系统：安卓（Android）  运行内存：6GB  前置摄像头像素：800万-1599万  购买方式：其他  后置摄像头像素：后置双摄像头,1200万-1999万  电池容量：4000mAh-5999mAh热点：后置双摄像头",\r\n		"color":"金色,银色,深空灰",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/OPPOA37.jpg",\r\n		"text":"oppo A37",\r\n		"price":"1199",\r\n		"h1":"OPPO  A37 5寸手机  ",\r\n		"h2":"初见A37,就忍不住握在手中细细把玩。2.5D弧度屏温润晶莹,以优雅的曲线过渡至微弧中框和圆润倒角,质感细腻的机身散发光泽。整部手机犹如浑然一体的艺术品,凝于掌心。好手感背后,时触感和握感的全面的提升。A37拥有5.0英寸大屏机身,重量却仅有140g。加之重新优化的圆润雅弧中框,更细腻的背部触感,使握持A37变成一件舒适、愉悦的事,仿佛在温柔地提醒你：“Hi,我在你的手心。”",\r\n		"color":"金色,玫瑰金",\r\n		"type":"官方标配",\r\n		"high":"16GB"\r\n	}', '{\r\n		"url":"../images/xiaomi6.jpg",\r\n		"text":"小米 6 4g手机",\r\n		"price":" 2899",\r\n		"h1":"小米手机 为发烧而生  ",\r\n		"h2":"信誉诚信保障！为发烧而生  7天包退,一月包换,产品质量包您满意,采用全新的骁龙八核处理器,运行速度超快 ",\r\n		"color":"白色,金色,磨砂黑,亮黑色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}'),
('{\r\n		"url":"../images/iphone5s.jpg",\r\n		"text":"iphone5s",\r\n		"price":"1699",\r\n		"h1":"Apple/苹果 iPhone5s 4.7寸手机 苹果5s",\r\n		"h2":"信誉诚信保障！每一代iPhone 首批都抢先开售, 新iphone特性：新增亮面黑,压力感应HOME键,ip67级防水防尘,1200w像素光学防抖,全新A10处理器,续航提升,立体扬声器 ,lightning耳机接入方式,双摄像头。标配的是近期激活,套餐一的是后封未激活,大陆行的是原封未激活",\r\n		"color":"金色,银色,深空灰",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/huaweimate9.jpg",\r\n		"text":"华为 mate9",\r\n		"price":"4499",\r\n		"h1":"华为mate9  4G手机   ",\r\n		"h2":"  双卡双待 铂光金 全网通(6GB RAM+64GB ROM)  商品毛重：400.00g  系统：安卓（Android）  运行内存：6GB  前置摄像头像素：800万-1599万  购买方式：其他  后置摄像头像素：后置双摄像头,1200万-1999万  电池容量：4000mAh-5999mAh热点：后置双摄像头",\r\n		"color":"金色,银色,深空灰",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}', '{\r\n		"url":"../images/oppor11.jpg",\r\n		"text":"oppo r11",\r\n		"price":"未知",\r\n		"h1":"OPPOr11  简易版商品详情页,6月10日发布会后将更新  ",\r\n		"h2":"采用后置１６００万像素广角镜头与２０００万像素长焦镜头组合。那些值得回味的瞬间就用它清晰记录吧。",\r\n		"color":"金色,玫瑰金,黑色",\r\n		"type":"官方标配",\r\n		"high":"64GB"\r\n	}', '{\r\n		"url":"../images/xiaomi5.jpg",\r\n		"text":"小米5 4g手机",\r\n		"price":" 1699",\r\n		"h1":"小米手机  为发烧而生 ",\r\n		"h2":"信誉诚信保障！为发烧而生  7天包退,一月包换,产品质量包您满意,采用全新的骁龙八核处理器,运行速度超快 ",\r\n		"color":"白色,金色,磨砂黑,亮黑色",\r\n		"type":"官方标配,套餐一,套餐二,套餐三",\r\n		"high":"16GB,32GB,64GB,128GB"\r\n	}');

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `a` int(100) NOT NULL,
  `b` int(100) NOT NULL,
  PRIMARY KEY (`a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `test`
--

INSERT INTO `test` (`a`, `b`) VALUES
(0, 1),
(1, 0),
(3, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
