-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`i`.`Id`
FROM
	`TestEnumTable` `i`
WHERE
	(`i`.`Value` IN (1) OR `i`.`Value` IS NULL)
ORDER BY
	`i`.`Id`

