BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`FirstName`,
	`x`.`ID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	(
		SELECT 1 AS `Patient_PersonID`, 'Janet' AS `FirstName`, 3 AS `ID`, NULL AS `LastName`, NULL AS `MiddleName`, 'M' AS `Gender`
		UNION ALL
		SELECT NULL, 'Doe', 4, NULL, NULL, 'M') `x`
WHERE
	`x`.`Patient_PersonID` = 1

