BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`contract`.`Id`,
	`servProj`.`IdContract`
FROM
	`Issue4613Service` `servProj`
		INNER JOIN `Issue4613Contract` `contract` ON `servProj`.`IdContract` = `contract`.`Id`

