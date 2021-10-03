BeforeExecute
-- MySql55 MySql

SELECT
	Count(*),
	Max(`t1`.`ChildID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

