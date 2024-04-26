BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`pp`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`pp`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `pp`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`pp`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`pp`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `pp`

