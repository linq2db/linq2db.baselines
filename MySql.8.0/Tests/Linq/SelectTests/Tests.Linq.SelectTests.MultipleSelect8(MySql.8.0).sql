BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Length Int32
SET     @Length = 2

SELECT
	(`p2`.`PersonID` * 2) / @Length,
	`p2`.`FirstName`
FROM
	`Person` `p2`

