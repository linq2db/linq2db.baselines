-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`Value1`
	)
FROM
	`Parent` `p`

