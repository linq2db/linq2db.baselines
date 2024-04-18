BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `ch`
		WHERE
			`t1`.`ParentID` = `ch`.`ParentID` AND `ch`.`ChildID` > 20
	)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

