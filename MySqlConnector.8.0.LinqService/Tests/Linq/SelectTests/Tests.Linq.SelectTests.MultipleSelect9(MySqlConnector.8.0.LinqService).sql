BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(`p5`.`PersonID` * @Length) / 2,
	`p5`.`FirstName`
FROM
	`Person` `p5`

