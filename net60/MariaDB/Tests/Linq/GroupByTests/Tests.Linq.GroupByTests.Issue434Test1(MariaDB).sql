BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @input VarChar(4) -- String
SET     @input = 'test'

SELECT
	`p`.`PersonID`,
	`_gjd_ri`.`PersonID`,
	`_gjd_ri`.`Diagnosis`
FROM
	`Person` `p`
		INNER JOIN `Patient` `_gjd_ri` ON `_gjd_ri`.`PersonID` = `p`.`PersonID`
WHERE
	LOCATE(@input, Lower(`p`.`FirstName`)) > 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @input VarChar(4) -- String
SET     @input = 'test'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	LOCATE(@input, Lower(`p`.`FirstName`)) > 0

