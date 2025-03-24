BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Char_Length(`p`.`FirstName`) = 0
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

