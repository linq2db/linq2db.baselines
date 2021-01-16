BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DropTableTestID`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `DropTableTestID`
(
	`ID`  INT AUTO_INCREMENT NOT NULL,
	`ID1` INT                NOT NULL,

	CONSTRAINT `PK_DropTableTestID` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `DropTableTestID`
(
	`ID1`
)
VALUES
(
	2
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `DropTableTestID`

