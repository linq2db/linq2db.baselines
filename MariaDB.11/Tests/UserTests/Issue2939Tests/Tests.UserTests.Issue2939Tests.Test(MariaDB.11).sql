BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`serv`.`Id`
FROM
	`Adsl` `serv`
		INNER JOIN `Client` `client_1` ON `serv`.`IdClient` = `client_1`.`Id`

