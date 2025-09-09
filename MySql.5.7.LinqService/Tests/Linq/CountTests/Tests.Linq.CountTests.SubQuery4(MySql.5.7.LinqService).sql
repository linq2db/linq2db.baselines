BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

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

