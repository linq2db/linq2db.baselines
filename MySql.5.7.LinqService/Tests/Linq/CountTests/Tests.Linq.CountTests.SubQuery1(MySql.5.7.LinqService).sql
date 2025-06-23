BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND CAST(`a_Children`.`ChildID` AS DECIMAL(29, 10)) <> 0
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

