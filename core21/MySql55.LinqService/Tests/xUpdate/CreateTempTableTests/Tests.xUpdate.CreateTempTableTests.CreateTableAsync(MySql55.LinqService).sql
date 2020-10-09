BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)

CREATE TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)

INSERT INTO `TempTable`
(
	`ID`
)
SELECT 
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)

DROP TABLE `TempTable`

