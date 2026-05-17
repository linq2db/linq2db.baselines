-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`Value1`,
	CAST(NULL AS SIGNED)
FROM
	`Parent` `c_1`
UNION ALL
SELECT
	CAST(NULL AS SIGNED),
	`c_2`.`ParentID`
FROM
	`Child` `c_2`

