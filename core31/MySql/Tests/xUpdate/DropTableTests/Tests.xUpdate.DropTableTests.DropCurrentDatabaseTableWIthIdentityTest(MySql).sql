BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DropTableTestID`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `DropTableTestID`
(
	`ID`  INT AUTO_INCREMENT NOT NULL,
	`ID1` INT                NOT NULL,

	CONSTRAINT `PK_DropTableTestID` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `DropTableTestID`
(
	`ID1`
)
VALUES
(
	2
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`ID`,
	`t`.`ID1`
FROM
	`DropTableTestID` `t`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `DropTableTestID`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`ID1`
FROM
	`DropTableTestID` `t1`

