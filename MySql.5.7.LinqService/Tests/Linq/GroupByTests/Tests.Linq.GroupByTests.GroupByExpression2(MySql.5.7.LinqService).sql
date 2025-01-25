BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ChildID`,
	AVG(`t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ChildID`

