-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`,
	sign(`r`.`F`) * CASE
		WHEN abs(`r`.`F`) - floor(abs(`r`.`F`)) = 0.5 THEN floor(abs(`r`.`F`)) + 1
		ELSE round(abs(`r`.`F`), 0)
	END,
	sign(`r`.`F`) * (CASE
		WHEN abs(`r`.`F`) * power(10, `r`.`P`) - floor(abs(`r`.`F`) * power(10, `r`.`P`)) = 0.5
			THEN floor(abs(`r`.`F`) * power(10, `r`.`P`)) + 1
		ELSE round(abs(`r`.`F`) * power(10, `r`.`P`), 0)
	END / power(10, `r`.`P`)),
	CASE
		WHEN `r`.`F` - FLOOR(`r`.`F`) = 0.5 THEN ROUND(`r`.`F` * 0.5, 0) * 2
		ELSE ROUND(`r`.`F`, 0)
	END,
	CASE
		WHEN (`r`.`F` * 2 = ROUND(`r`.`F` * 2, `r`.`P`) OR `r`.`F` IS NULL AND (`r`.`F` IS NULL OR `r`.`P` IS NULL)) AND (`r`.`F` <> ROUND(`r`.`F`, `r`.`P`) OR `r`.`F` IS NULL AND NOT (`r`.`F` IS NULL OR `r`.`P` IS NULL) OR `r`.`F` IS NOT NULL AND `r`.`P` IS NULL)
			THEN ROUND(`r`.`F` / 2, `r`.`P`) * 2
		ELSE ROUND(`r`.`F`, `r`.`P`)
	END
FROM
	`RoundValues` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`D`,
	`t1`.`F`,
	`t1`.`P`
FROM
	`RoundValues` `t1`

