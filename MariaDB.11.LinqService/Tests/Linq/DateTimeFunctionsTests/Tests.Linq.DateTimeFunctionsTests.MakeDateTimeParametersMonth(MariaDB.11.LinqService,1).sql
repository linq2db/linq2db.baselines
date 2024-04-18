BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Cast(Concat(Lpad((2010 + `t`.`ID`),4,'0'), '-01-01') as Date)
FROM
	`LinqDataTypes` `t`

