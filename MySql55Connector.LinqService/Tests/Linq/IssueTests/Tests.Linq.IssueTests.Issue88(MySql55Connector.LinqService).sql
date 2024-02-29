BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND `_`.`Gender` = 'M'

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND 'M' = `_`.`Gender`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @gender String -- StringFixedLength
SET     @gender = 'M'

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND `_`.`Gender` = @gender

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @gender String -- StringFixedLength
SET     @gender = 'M'

SELECT
	`_`.`FirstName`,
	`_`.`PersonID`,
	`_`.`LastName`,
	`_`.`MiddleName`,
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND @gender = `_`.`Gender`

