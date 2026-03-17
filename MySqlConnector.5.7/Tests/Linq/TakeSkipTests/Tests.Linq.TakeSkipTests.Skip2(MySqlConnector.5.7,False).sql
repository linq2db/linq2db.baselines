-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` > 3 OR `ch`.`ChildID` < 4
ORDER BY
	`ch`.`ParentID`,
	`ch`.`ChildID`
LIMIT 3, 9223372036854775807

