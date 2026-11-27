-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`serv`.`Id`
FROM
	`JoinedServiceAdsl` `serv`
		INNER JOIN `JoinedServiceClient` `client` ON `serv`.`IdClient` = `client`.`Id`

