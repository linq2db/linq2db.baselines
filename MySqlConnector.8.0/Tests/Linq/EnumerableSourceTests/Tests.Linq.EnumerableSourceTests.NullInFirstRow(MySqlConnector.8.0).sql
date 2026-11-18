-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	`r`.`Value`,
	`r`.`Name`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(NULL AS SIGNED) AS `Value`, 'a' AS `Name`
			UNION ALL
			SELECT 2, 2, NULL) `r` ON `p`.`PersonID` = `r`.`Id`
ORDER BY
	`r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

