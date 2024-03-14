BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`pp`.`ParentID`,
	(
		SELECT
			Count(*)
		FROM
			`Child` `a_Children`
		WHERE
			`pp`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `pp`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`pp`.`ParentID`,
	(
		SELECT
			Count(*)
		FROM
			`Child` `a_Children`
		WHERE
			`pp`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `pp`

