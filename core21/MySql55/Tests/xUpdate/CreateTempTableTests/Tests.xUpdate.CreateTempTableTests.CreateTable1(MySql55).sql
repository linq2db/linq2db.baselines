BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`ID`
FROM
	`TempTable` `t1`

BeforeExecute
-- MySql55 MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TempTable`

