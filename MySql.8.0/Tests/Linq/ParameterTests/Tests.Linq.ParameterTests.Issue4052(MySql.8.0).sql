-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`c_1`.`FirstName`,
	`c_1`.`PersonID`,
	`c_1`.`LastName`,
	`c_1`.`MiddleName`,
	`c_1`.`Gender`
FROM
	`Person` `c_1`
WHERE
	`c_1`.`PersonID` = @ID AND (`c_1`.`MiddleName` IS NULL OR Lower(Trim(`c_1`.`MiddleName`)) = '')

