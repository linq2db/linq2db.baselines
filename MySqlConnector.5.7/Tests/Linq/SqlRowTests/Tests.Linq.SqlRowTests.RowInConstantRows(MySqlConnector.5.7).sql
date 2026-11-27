-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`Id`,
	`x`.`Country`,
	`x`.`State`
FROM
	`CountryStateTable` `x`
WHERE
	(`x`.`Country`, `x`.`State`) IN (('US', 'CA'), ('US', 'NY'))

