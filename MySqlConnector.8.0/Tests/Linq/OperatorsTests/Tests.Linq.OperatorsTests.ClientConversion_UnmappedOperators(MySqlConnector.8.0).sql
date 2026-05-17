-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`i`.`Id`
FROM
	`Tender` `i`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Tender` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`
FROM
	`Tender` `r`
WHERE
	`r`.`Id` = '00000000-0000-0000-0000-000000000000'
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`i`.`Id`
FROM
	`Tender` `i`
LIMIT 1

