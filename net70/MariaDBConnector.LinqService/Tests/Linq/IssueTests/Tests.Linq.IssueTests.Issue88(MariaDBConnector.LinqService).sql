BeforeExecute
-- MariaDBConnector MySqlConnector MySql

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
-- MariaDBConnector MySqlConnector MySql

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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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

