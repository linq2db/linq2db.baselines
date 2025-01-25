BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Concat('1', `t1`.`FirstName` COLLATE utf8_bin, '2')
FROM
	`Person` `t1`

