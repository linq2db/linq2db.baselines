-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`Id`,
	`x`.`Country`,
	`x`.`State`
FROM
	`CountryStateTable` `x`
WHERE
	(`x`.`Country`, `x`.`State`) IN (('US', 'CA'), ('US', 'NY'))

