BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			SUM(`a_Children`.`ParentID` * `a_Children`.`ChildID`)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` > 2
	)
FROM
	`Parent` `p`

