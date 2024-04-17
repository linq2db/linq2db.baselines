BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`_gjd_ri`.`PersonID`,
	`_gjd_ri`.`Diagnosis`
FROM
	`Person` `p`
		INNER JOIN `Patient` `_gjd_ri` ON `_gjd_ri`.`PersonID` = `p`.`PersonID`
WHERE
	LOCATE('test', Lower(`p`.`FirstName`)) > 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	LOCATE('test', Lower(`p`.`FirstName`)) > 0

