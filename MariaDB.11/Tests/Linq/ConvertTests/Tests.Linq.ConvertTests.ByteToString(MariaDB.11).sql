BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			Cast(Cast(`t`.`ID` as UNSIGNED) as CHAR(3)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	Char_Length(`p`.`c1`) > 0

