BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 2

SELECT
	(`p2`.`PersonID` * @ID) / 2,
	`p2`.`FirstName`
FROM
	`Person` `p2`

