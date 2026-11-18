-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Abs(`r`.`Value`)
FROM
	`FineDecimalRow` `r`
UNION ALL
SELECT
	CAST(1.000000000005 AS DECIMAL(18, 12))
FROM
	`FineDecimalRow` `r_1`

