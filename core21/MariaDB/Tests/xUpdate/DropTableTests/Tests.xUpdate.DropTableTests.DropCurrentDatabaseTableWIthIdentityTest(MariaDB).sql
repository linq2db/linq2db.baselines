BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DropTableTestID`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `DropTableTestID`
(
	`ID`  INT AUTO_INCREMENT NOT NULL,
	`ID1` INT                NOT NULL,

	CONSTRAINT `PK_DropTableTestID` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `DropTableTestID`
(
	`ID1`
)
VALUES
(
	2
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `DropTableTestID`

