CREATE TABLE `history` (
  `place` varchar(12) NOT NULL,
  `local` varchar(25) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`place`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8