BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

