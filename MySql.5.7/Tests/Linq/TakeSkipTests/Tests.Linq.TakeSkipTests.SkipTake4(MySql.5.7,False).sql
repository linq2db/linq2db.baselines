-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ChildID`,
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		ORDER BY
			`t1`.`ChildID` DESC
		LIMIT 1, 7
	) `t2`
ORDER BY
	`t2`.`ChildID`
LIMIT 2, 9223372036854775807

