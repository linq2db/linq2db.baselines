-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Abs(`r`.`Value`)
FROM
	`FineDecimalRow` `r`
UNION ALL
SELECT
	CAST(1.000000000005 AS DECIMAL(18, 12))
FROM
	`FineDecimalRow` `r_1`

