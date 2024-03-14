BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`_`.`ChildID`,
	Avg(`_`.`ParentID`)
FROM
	`Child` `_`
GROUP BY
	`_`.`ChildID`

