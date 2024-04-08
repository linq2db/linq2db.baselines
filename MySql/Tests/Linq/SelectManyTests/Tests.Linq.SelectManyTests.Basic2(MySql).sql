BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `p`
		CROSS JOIN `Child` `_`

