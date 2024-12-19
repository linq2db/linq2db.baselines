BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` = `p`.`ParentID` AND
			CAST(`a_Children`.`ChildID` AS DECIMAL(29, 10)) <> 0
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

