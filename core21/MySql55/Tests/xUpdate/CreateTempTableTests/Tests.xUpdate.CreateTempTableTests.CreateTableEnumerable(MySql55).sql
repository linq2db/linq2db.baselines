BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55 MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

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
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7)

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

