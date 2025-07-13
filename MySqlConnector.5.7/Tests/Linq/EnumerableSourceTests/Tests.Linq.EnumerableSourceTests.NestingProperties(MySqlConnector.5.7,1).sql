BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`FirstName`,
	`x`.`ID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	(
		SELECT 1 AS `Patient_PersonID`, 'Janet' AS `FirstName`, 2 AS `ID`, NULL AS `LastName`, NULL AS `MiddleName`, 'M' AS `Gender`
		UNION ALL
		SELECT NULL, 'Doe', 3, NULL, NULL, 'M') `x`
WHERE
	`x`.`Patient_PersonID` = 1

