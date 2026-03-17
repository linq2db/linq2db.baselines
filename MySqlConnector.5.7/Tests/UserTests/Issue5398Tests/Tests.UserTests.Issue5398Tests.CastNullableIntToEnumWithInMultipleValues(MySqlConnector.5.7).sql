-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`i`.`Id`
FROM
	`TestEnumTable` `i`
WHERE
	`i`.`Value` IN (1, 2)
ORDER BY
	`i`.`Id`

