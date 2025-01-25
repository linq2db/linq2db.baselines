BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	Concat(`p`.`FirstName`, '1')
FROM
	`Person` `p`

