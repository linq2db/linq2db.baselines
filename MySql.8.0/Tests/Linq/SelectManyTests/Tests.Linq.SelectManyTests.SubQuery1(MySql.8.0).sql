BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1

SELECT
	`p1`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p1`,
	`Person` `p`
WHERE
	`p1`.`PersonID` = `p`.`PersonID` AND `p`.`PersonID` = @id

