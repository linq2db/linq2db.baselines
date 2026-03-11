-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ParentID` = 2 AND `ch`.`ChildID` = 21

