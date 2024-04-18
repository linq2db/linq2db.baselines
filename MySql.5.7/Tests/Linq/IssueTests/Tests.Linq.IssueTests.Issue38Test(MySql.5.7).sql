BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			Count(*)
		FROM
			`GrandChild` `t1`
		WHERE
			`a`.`ParentID` = `t1`.`ParentID` AND `a`.`ChildID` = `t1`.`ChildID`
	)
FROM
	`Child` `a`

