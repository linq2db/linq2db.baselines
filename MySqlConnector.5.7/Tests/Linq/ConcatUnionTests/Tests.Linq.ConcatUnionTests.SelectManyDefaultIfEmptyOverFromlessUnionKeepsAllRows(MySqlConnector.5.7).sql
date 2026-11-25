-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`ParentID`,
	`x`.`X`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				CAST(1 AS SIGNED) as `X`
			UNION ALL
			SELECT
				CAST(2 AS SIGNED) as `X`
		) `x` ON 1=1

