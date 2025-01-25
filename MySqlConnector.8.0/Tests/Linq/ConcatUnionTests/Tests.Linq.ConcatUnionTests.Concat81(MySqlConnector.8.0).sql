BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ParentID`
FROM
	`Parent` `c_1`
UNION ALL
SELECT
	`c_2`.`ParentID`,
	`c_2`.`ChildID`
FROM
	`Child` `c_2`

