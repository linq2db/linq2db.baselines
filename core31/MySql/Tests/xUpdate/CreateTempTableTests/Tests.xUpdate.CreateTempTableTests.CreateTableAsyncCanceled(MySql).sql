BeforeExecute
-- MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql (asynchronously)

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql

DROP TABLE `TempTable`

