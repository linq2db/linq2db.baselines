BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 2

SELECT
	(`p2`.`PersonID` * @ID) / 2,
	`p2`.`FirstName`
FROM
	`Person` `p2`

