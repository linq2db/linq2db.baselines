-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

