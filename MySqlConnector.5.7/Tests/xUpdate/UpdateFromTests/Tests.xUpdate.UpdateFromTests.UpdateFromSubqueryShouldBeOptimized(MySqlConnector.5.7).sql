-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`FirstName`,
	`t1`.`LastName`
FROM
	`UpdateSubquerySourceTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

