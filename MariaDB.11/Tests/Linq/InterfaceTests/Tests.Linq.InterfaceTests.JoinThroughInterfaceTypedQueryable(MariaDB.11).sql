-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`serv`.`Id`
FROM
	`JoinedServiceAdsl` `serv`
		INNER JOIN `JoinedServiceClient` `client` ON `serv`.`IdClient` = `client`.`Id`

