-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	MAX(`g_1`.`Value`)
FROM
	`ScaledDecimalRow` `g_1`
GROUP BY
	`g_1`.`Id`
UNION ALL
SELECT
	CAST(1.004 AS DECIMAL(29, 10))
FROM
	`ScaledDecimalRow` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CASE
		WHEN `r`.`Id` > 0 THEN `r`.`Value`
		ELSE `r`.`Value` + 1
	END
FROM
	`ScaledDecimalRow` `r`
UNION ALL
SELECT
	CAST(1.004 AS DECIMAL(29, 10))
FROM
	`ScaledDecimalRow` `r_1`

