-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Abs(`r`.`Value`)
FROM
	`FineDecimalRow` `r`
UNION ALL
SELECT
	CAST(1.000000000005 AS DECIMAL(18, 12))
FROM
	`FineDecimalRow` `r_1`

