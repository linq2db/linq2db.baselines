BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID
LIMIT 2

