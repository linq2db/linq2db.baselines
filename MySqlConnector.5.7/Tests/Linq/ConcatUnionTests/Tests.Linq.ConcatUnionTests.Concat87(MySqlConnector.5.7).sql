-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	CAST(NULL AS SIGNED)
FROM
	`Child` `c_1`
UNION ALL
SELECT
	CAST(NULL AS SIGNED),
	`c_2`.`Value1`
FROM
	`Parent` `c_2`

