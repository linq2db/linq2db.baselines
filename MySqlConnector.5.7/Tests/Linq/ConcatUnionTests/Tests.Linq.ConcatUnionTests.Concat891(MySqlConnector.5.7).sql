-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ParentID`
FROM
	`Child` `c_1`
UNION
SELECT
	NULL,
	`c_2`.`ParentID`
FROM
	`Parent` `c_2`
UNION ALL
SELECT
	`c_3`.`ParentID`,
	`c_3`.`ParentID`
FROM
	`Child` `c_3`

