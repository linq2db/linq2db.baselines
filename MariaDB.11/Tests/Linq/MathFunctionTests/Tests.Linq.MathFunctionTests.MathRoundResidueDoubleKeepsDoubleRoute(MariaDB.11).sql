-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	sign(`r`.`F`) * (CASE
		WHEN abs(`r`.`F`) * power(10, `r`.`P`) - floor(abs(`r`.`F`) * power(10, `r`.`P`)) = 0.5
			THEN floor(abs(`r`.`F`) * power(10, `r`.`P`)) + 1
		ELSE round(abs(`r`.`F`) * power(10, `r`.`P`), 0)
	END / power(10, `r`.`P`))
FROM
	`ResidueValues` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`F`,
	`t1`.`P`
FROM
	`ResidueValues` `t1`

