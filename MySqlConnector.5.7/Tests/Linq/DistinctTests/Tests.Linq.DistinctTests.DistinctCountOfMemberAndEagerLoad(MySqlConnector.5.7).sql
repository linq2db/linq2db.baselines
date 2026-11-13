-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `t1`

