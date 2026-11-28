-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	sign(`r`.`F`) * (CASE
		WHEN abs(`r`.`F`) * power(10, `r`.`P`) - floor(abs(`r`.`F`) * power(10, `r`.`P`)) = 0.5
			THEN floor(abs(`r`.`F`) * power(10, `r`.`P`)) + 1
		ELSE round(abs(`r`.`F`) * power(10, `r`.`P`), 0)
	END / power(10, `r`.`P`))
FROM
	`ResidueValues` `r`
ORDER BY
	`r`.`Id`

