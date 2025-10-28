BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`m_1`.`PersonID`,
	`d`.`PersonID`,
	`d`.`Diagnosis`
FROM
	`Person` `m_1`
		INNER JOIN `Patient` `d` ON `m_1`.`PersonID` = `d`.`PersonID`
WHERE
	LOCATE('test', Lower(`m_1`.`FirstName`)) > 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	LOCATE('test', Lower(`p`.`FirstName`)) > 0

