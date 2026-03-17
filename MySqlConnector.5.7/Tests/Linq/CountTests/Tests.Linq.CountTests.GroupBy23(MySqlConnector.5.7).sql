-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(CASE
		WHEN `g_1`.`ParentID` < 2 THEN 1
		ELSE NULL
	END)
FROM
	`Parent` `g_1`
WHERE
	`g_1`.`ParentID` > -1
GROUP BY
	`g_1`.`Value1`

