-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `p1`
		WHERE
			`p1`.`ParentID` = `p`.`ParentID`
	)
FROM
	`Parent` `p`

