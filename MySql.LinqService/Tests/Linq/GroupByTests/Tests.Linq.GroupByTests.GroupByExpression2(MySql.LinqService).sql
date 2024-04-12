BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`_`.`ChildID`,
	AVG(`_`.`ParentID`)
FROM
	`Child` `_`
GROUP BY
	`_`.`ChildID`

