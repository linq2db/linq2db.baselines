-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`Item` `i`
ORDER BY
	`i`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`l`.`ItemId`,
	`l`.`Id`,
	`l`.`Log`
FROM
	`ItemLog` `l`
WHERE
	`l`.`ItemId` IN (1, 2)
ORDER BY
	`l`.`ItemId`,
	`l`.`Id` DESC

