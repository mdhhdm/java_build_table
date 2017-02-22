CREATE TABLE `device_install_app_xxxx` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uid` bigint(20) NOT NULL COMMENT '用户ID',
  `deviceid` varchar(255) NOT NULL COMMENT '设备编号',
  `bundleid` varchar(100) NOT NULL COMMENT 'bundleid',
  `status` int(11) NOT NULL COMMENT '状态，1-安装，0-卸载了',
  `cts` datetime NOT NULL COMMENT '创建时间',
  `uts` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_deviceid_bundleid` (`deviceid`,`bundleid`),
  KEY `idx_bundleid` (`bundleid`),
  KEY `idx_cts` (`cts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='安装app日志'