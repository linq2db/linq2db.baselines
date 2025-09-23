BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(`p5`.`PersonID` * @Length) / 2,
	`p5`.`FirstName`
FROM
	`Person` `p5`

