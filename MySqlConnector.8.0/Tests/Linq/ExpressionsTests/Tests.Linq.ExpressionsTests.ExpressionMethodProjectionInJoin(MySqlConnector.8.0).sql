-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`contract`.`Id`,
	`servProj`.`IdContract`
FROM
	`ProjectionServiceTable` `servProj`
		INNER JOIN `ProjectionContractTable` `contract` ON `servProj`.`IdContract` = `contract`.`Id`

