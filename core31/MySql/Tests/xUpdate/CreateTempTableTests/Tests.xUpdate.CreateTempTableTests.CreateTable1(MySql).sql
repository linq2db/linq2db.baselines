BeforeExecute
-- MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql

SELECT
	`t1`.`ID`
FROM
	`TempTable` `t1`

BeforeExecute
-- MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `TempTable`

