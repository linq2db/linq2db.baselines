BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Avg(`_`.`ParentID`)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` < 0

