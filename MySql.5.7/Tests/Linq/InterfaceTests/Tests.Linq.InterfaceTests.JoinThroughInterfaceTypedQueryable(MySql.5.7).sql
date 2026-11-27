-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`serv`.`Id`
FROM
	`JoinedServiceAdsl` `serv`
		INNER JOIN `JoinedServiceClient` `client` ON `serv`.`IdClient` = `client`.`Id`

