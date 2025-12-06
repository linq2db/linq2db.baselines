-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p`
		INNER JOIN `Parent` `a_Parent1` ON `p`.`ParentID` = `a_Parent1`.`ParentID`
WHERE
	`a_Parent1`.`ParentID` IN (1, 2)

