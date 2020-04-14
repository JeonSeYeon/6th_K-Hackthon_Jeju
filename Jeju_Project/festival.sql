CREATE TABLE `festival` (
  `name` varchar(25) NOT NULL,
  `local` varchar(45) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8