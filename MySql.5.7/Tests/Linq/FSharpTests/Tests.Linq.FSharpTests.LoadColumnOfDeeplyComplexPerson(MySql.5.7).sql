BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @ID
LIMIT 2

