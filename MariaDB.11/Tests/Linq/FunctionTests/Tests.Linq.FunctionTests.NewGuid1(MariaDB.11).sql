BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`GuidValue`
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`GuidValue` <> Uuid()

