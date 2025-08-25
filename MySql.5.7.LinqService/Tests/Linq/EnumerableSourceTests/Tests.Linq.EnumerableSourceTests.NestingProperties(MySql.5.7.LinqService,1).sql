BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`x`.`FirstName`,
	`x`.`ID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	(
		SELECT 1 AS `Patient_PersonID`, 'Janet' AS `FirstName`, 2 AS `ID`, CAST(NULL AS CHAR(255)) AS `LastName`, CAST(NULL AS CHAR(255)) AS `MiddleName`, 'M' AS `Gender`
		UNION ALL
		SELECT NULL, 'Doe', 3, NULL, NULL, 'M') `x`
WHERE
	`x`.`Patient_PersonID` = 1

