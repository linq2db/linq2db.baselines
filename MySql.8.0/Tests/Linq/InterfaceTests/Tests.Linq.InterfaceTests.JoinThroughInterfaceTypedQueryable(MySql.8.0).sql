-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`serv`.`Id`
FROM
	`JoinedServiceAdsl` `serv`
		INNER JOIN `JoinedServiceClient` `client` ON `serv`.`IdClient` = `client`.`Id`

