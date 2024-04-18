BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`PersonID`,
	`_`.`Gender`,
	`_`.`FirstName`,
	`_`.`LastName`,
	`_`.`MiddleName`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1
LIMIT @take

