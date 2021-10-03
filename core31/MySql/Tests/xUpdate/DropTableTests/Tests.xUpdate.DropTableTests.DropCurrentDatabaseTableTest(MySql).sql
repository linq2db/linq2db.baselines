BeforeExecute
-- MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

BeforeExecute
-- MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

