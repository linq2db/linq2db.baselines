BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(`p5`.`PersonID` * CHAR_LENGTH('22')) / 2,
	`p5`.`FirstName`
FROM
	`Person` `p5`

