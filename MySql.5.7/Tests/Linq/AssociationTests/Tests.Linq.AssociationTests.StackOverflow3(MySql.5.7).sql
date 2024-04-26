BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`Value1`
	) <> 0

