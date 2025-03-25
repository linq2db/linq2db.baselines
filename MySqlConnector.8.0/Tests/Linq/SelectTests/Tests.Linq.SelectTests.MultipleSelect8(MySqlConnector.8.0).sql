BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(`p2`.`PersonID` * 2) / CHAR_LENGTH('22'),
	`p2`.`FirstName`
FROM
	`Person` `p2`

