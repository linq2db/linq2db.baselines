BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`nm`.`MiddleName`
FROM
	`Person` `nm`
WHERE
	NOT (`nm`.`MiddleName` IS NULL OR CHAR_LENGTH(`nm`.`MiddleName`) = 0 AND `nm`.`MiddleName` IS NOT NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

