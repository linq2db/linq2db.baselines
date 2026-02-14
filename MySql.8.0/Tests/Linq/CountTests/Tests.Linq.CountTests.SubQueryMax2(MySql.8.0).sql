-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	MAX((
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Child` `a_Children`
		WHERE
			`t1`.`ParentID` = `a_Children`.`ParentID`
	))
FROM
	`Parent` `t1`

