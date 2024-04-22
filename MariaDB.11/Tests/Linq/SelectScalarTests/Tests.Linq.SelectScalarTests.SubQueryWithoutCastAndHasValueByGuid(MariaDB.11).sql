BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
WHERE
	(
		SELECT
			`r`.`GuidValue`
		FROM
			`LinqDataTypes` `r`
		LIMIT 1
	) IS NOT NULL

