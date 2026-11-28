-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	RIGHT(`r`.`S`, `r`.`N`)
FROM
	`RightValues` `r`
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	`r`.`S`,
	`r`.`N`
FROM
	`RightValues` `r`
WHERE
	RIGHT(`r`.`S`, `r`.`N`) = 'ohn'

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`S`,
	`t1`.`N`
FROM
	`RightValues` `t1`

