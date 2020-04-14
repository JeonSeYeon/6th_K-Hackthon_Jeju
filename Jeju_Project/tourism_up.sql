CREATE TABLE `tourism_up` (
  `place` varchar(12) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`place`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8