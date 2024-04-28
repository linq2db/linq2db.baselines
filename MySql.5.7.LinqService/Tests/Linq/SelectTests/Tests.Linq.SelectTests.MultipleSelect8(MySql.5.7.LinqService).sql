BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 2

SELECT
	(`p2`.`PersonID` * 2) / @ID,
	`p2`.`FirstName`
FROM
	`Person` `p2`

