BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = Floor(Cast(`ch`.`ChildID` as DECIMAL(29, 10)) / 10)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

