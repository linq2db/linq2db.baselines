-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
INTERSECT
SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p`
WHERE
	`p`.`ParentID` = 3

