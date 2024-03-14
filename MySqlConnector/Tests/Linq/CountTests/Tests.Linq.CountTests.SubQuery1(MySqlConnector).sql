BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	(
		SELECT
			Count(*)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` = `p`.`ParentID` AND
			Cast(`a_Children`.`ChildID` as DECIMAL) <> 0
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

