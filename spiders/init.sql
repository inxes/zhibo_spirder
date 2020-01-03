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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `xj_star` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) DEFAULT NULL,
  `platform_id` varchar(255) DEFAULT NULL,
  `unknow1` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` text,
  `live_url` text,
  `unknow2` varchar(255) DEFAULT NULL,
  `unknow3` varchar(255) DEFAULT NULL,
  `unknow4` varchar(255) DEFAULT NULL,
  `unknow5` varchar(255) DEFAULT NULL,
  `unknow6` varchar(255) DEFAULT NULL,
  `unknow7` varchar(255) DEFAULT NULL,
  `unknow8` varchar(255) DEFAULT NULL,
  `view_num` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_publish` tinyint(4) DEFAULT NULL,
  `unknow9` varchar(255) DEFAULT NULL,
  `unknow10` varchar(255) DEFAULT NULL,
  `unknow11` int(11) DEFAULT NULL,
  `unknow12` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
