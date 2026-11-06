-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `t1`

