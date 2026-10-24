-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MAX(`g_1`.`Value`)
FROM
	`ScaledDecimalRow` `g_1`
GROUP BY
	`g_1`.`Id`
UNION ALL
SELECT
	CAST(1.004 AS DECIMAL(19, 3))
FROM
	`ScaledDecimalRow` `r`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CASE
		WHEN `r`.`Id` > 0 THEN `r`.`Value`
		ELSE `r`.`Value` + 1
	END
FROM
	`ScaledDecimalRow` `r`
UNION ALL
SELECT
	CAST(1.004 AS DECIMAL(19, 3))
FROM
	`ScaledDecimalRow` `r_1`

