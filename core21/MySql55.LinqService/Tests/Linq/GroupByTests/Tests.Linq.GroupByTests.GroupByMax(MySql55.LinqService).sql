BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Max(`t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ChildID`

