-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @id AND `p`.`MiddleName` IS NULL

