-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Coalesce((
		SELECT
			SUM(`a_Children`.`ChildID`)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` > 1
	), 0)
FROM
	`Parent` `p`

