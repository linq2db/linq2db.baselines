BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 2

SELECT
	(`p2`.`PersonID` * 2) / @ID,
	`p2`.`FirstName`
FROM
	`Person` `p2`

