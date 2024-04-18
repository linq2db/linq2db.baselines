BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Max(`t1`.`ChildID`),
	Max(`t1`.`ChildID` + `t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

