-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

