-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	2 = `ch`.`ParentID` AND 21 = `ch`.`ChildID`

