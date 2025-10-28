BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Degrees(CAST(Floor(`p`.`MoneyValue`) AS SIGNED)) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	CAST(`t`.`Value_1` AS DOUBLE) <> 0.10000000000000001

