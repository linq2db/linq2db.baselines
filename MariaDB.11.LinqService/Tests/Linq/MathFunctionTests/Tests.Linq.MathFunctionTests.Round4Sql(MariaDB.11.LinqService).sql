BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	CASE
		WHEN `t`.`c1` * 2 = ROUND(`t`.`c1` * 2, 5) AND `t`.`c1` <> ROUND(`t`.`c1`, 5)
			THEN ROUND(`t`.`c1` / 2, 5) * 2
		ELSE ROUND(`t`.`c1`, 5)
	END
FROM
	(
		SELECT
			CASE
				WHEN `p`.`MoneyValue` * 2 = ROUND(`p`.`MoneyValue` * 2, 1) AND `p`.`MoneyValue` <> ROUND(`p`.`MoneyValue`, 1)
					THEN ROUND(`p`.`MoneyValue` / 2, 1) * 2
				ELSE ROUND(`p`.`MoneyValue`, 1)
			END as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

