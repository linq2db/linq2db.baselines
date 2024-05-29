BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`pmp1`.`ChildID`
FROM
	`Child` `pmp1`
		CROSS JOIN (
			SELECT
				`pmp`.`ParentID`
			FROM
				`Child` `pmp`
			GROUP BY
				`pmp`.`ParentID`
		) `pmp_1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

