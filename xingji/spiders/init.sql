CREATE TABLE `xj_anchor_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unknow1` varchar(255) DEFAULT NULL,
  `unknow2` int(11) DEFAULT NULL,
  `unknow3` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `unknow4` tinyint(4) DEFAULT NULL,
  `unknow5` tinyint(4) DEFAULT NULL,
  `unknow6` varchar(255) DEFAULT NULL,
  `unknow7` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3874 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `xj_anchor_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `anchor_id` int(11) DEFAULT NULL COMMENT '主播id',
  `weibo_fans` int(11) DEFAULT NULL COMMENT '微博粉丝',
  `tieba_fans` int(11) DEFAULT NULL COMMENT '贴吧粉丝',
  `followers` int(11) DEFAULT NULL COMMENT '主播直播间订阅量',
  `quotient` int(11) DEFAULT NULL COMMENT '百度指数',
  `danmu` int(11) DEFAULT NULL COMMENT '弹幕量',
  `category_id` bigint(20) DEFAULT NULL COMMENT '游戏分类id，查库',
  `date` varchar(20) DEFAULT NULL COMMENT '日期',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `platform_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `xj_count_anchor_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `anchor_id` varchar(255) DEFAULT NULL COMMENT '主播id',
  `date` varchar(255) DEFAULT NULL COMMENT '直播日期',
  `view_num` int(11) DEFAULT NULL COMMENT '直播在线人数',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `xj_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) DEFAULT NULL COMMENT '游戏分类id',
  `platform_id` varchar(255) DEFAULT NULL COMMENT '平台id',
  `unknow1` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '主播名',
  `avatar` text COMMENT '头像',
  `live_url` text COMMENT '直播地址',
  `m_weibo` varchar(255) DEFAULT NULL,
  `tieba` varchar(255) DEFAULT NULL,
  `unknow4` varchar(255) DEFAULT NULL,
  `unknow5` varchar(255) DEFAULT NULL,
  `unknow6` varchar(255) DEFAULT NULL,
  `unknow7` varchar(255) DEFAULT NULL,
  `unknow8` varchar(255) DEFAULT NULL,
  `view_num` varchar(255) DEFAULT NULL COMMENT '抓取时的在线热度',
  `add_time` int(11) DEFAULT NULL COMMENT '入库时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_publish` tinyint(4) DEFAULT NULL COMMENT '是否上架,默认1',
  `unknow9` varchar(255) DEFAULT NULL,
  `unknow10` varchar(255) DEFAULT NULL,
  `unknow11` int(11) DEFAULT NULL,
  `unknow12` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `xj_update_games` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `xj_anchor_live` (
  `id` bigint(12) NOT NULL COMMENT '主键',
  `anchor_id` bigint(20) DEFAULT NULL COMMENT '主播id',
  `data` varchar(32) DEFAULT NULL COMMENT '直播日期',
  `start_time` int(11) DEFAULT NULL COMMENT '直播开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '直播结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `xj_gift_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gift_id` bigint(11) DEFAULT NULL COMMENT '礼物id',
  `name` varchar(20) DEFAULT NULL COMMENT '礼物名',
  `platform_id` bigint(20) DEFAULT NULL COMMENT '平台id',
  `price` decimal(18,2) DEFAULT NULL COMMENT '礼物单价',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `xj_view_live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `anchor_id` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `view_num` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;