-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(Power(`r`.`D`, CAST(0.00005 AS DECIMAL(29, 10))) AS DECIMAL(18, 4)) + `r`.`D`
FROM
	`PowScale` `r`
LIMIT 2

