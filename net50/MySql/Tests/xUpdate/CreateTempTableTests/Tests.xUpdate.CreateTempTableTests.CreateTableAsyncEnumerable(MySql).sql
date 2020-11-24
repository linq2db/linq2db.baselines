BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

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
-- MySql MySql.Official MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

