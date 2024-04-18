BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = Floor(Cast(`ch`.`ChildID` as DOUBLE) / 10)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

