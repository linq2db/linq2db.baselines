-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`,
	`x`.`Country`,
	`x`.`State`
FROM
	`CountryStateTable` `x`
WHERE
	(`x`.`Country`, `x`.`State`) IN (('US', 'CA'), ('US', 'NY'))

