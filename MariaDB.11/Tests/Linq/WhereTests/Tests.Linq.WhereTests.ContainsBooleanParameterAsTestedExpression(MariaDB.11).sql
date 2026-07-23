-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @flag Bool -- Boolean
SET     @flag = 1

SELECT
	`t`.`ID`
FROM
	`LinqDataTypes` `t`
WHERE
	@flag IN (`t`.`BoolValue`)

