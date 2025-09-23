BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(`p5`.`PersonID` * @Length) / 2,
	`p5`.`FirstName`
FROM
	`Person` `p5`

