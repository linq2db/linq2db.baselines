-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @personId Int32
SET     @personId = 1
DECLARE @personId_1 Int32
SET     @personId_1 = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`,
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @personId AND `p`.`PersonID` = @personId_1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @personId Int32
SET     @personId = 1
DECLARE @personId_1 Int32
SET     @personId_1 = 2

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`,
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = @personId AND `p`.`PersonID` = @personId_1

