BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(`p5`.`PersonID` * CHAR_LENGTH('22')) / 2,
	`p5`.`FirstName`
FROM
	`Person` `p5`

