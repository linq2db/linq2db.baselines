-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`UpdateSubquerySourceTable` `x`
		LEFT JOIN `UpdateSubquerySourceTable` `canChange` ON `canChange`.`Id` = `x`.`Id` + 1
SET
	`x`.`FirstName` = CASE
		WHEN `canChange`.`Id` IS NOT NULL THEN `canChange`.`FirstName`
		ELSE `x`.`FirstName`
	END,
	`x`.`LastName` = CASE
		WHEN `canChange`.`Id` IS NOT NULL THEN `canChange`.`LastName`
		ELSE `x`.`LastName`
	END
WHERE
	`x`.`Id` = 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`FirstName`,
	`t1`.`LastName`
FROM
	`UpdateSubquerySourceTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

