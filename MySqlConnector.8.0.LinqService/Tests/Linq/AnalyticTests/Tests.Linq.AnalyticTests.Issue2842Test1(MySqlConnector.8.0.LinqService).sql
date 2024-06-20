BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`FirstName`,
	RANK() OVER(ORDER BY (`x`.`PersonID` = 2))
FROM
	`Person` `x`

