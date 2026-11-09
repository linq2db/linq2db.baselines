-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`l`.`PersonID`,
	`r`.`PersonID`,
	`r`.`Gender`
FROM
	`Person` `l`
		INNER JOIN `Person` `r` ON `l`.`Gender` = `r`.`Gender`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

