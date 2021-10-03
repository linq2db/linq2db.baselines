BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55 MySql (asynchronously)

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql (asynchronously)

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql55 MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55 MySql

DROP TABLE `TempTable`

