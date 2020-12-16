BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Cast(`t`.`MoneyValue` as CHAR(31))
FROM
	`LinqDataTypes` `t`
WHERE
	Char_Length(Cast(`t`.`MoneyValue` as CHAR(31))) > 0

