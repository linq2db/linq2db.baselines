BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` >= 0 AND `ch`.`ChildID` <= 100
LIMIT 3

