Create SCHEMA Project2;
Create database Project;
use Project;

Drop TABLE Pharmacy;
CREATE TABLE `Pharmacy` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `PharmacyName` varchar(255),
  `Email` varchar(255) default NULL,
  `Address` varchar(255) default NULL,
  `City` varchar(255),
  `Phone` varchar(11) default NULL,
  `Fax` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;
