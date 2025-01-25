BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 1

SELECT
	(`p`.`PersonID` + @n) - 1,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` + @n = 2

