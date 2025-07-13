BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ChildID`,
	AVG(`t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ChildID`

