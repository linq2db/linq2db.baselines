-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(Power(`r`.`D`, CAST(0.00005 AS DOUBLE)) AS DECIMAL(18, 4)) + `r`.`D`
FROM
	`PowScale` `r`
LIMIT 2

