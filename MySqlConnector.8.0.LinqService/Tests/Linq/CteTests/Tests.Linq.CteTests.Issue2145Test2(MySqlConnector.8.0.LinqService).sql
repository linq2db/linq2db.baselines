BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE_1`
(
	`ID`,
	`FirstName`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
AS
(
	SELECT
		`t1`.`ID`,
		`t1`.`FirstName`,
		`t1`.`LastName`,
		`t1`.`MiddleName`,
		`t1`.`Gender`
	FROM
		(
			SELECT 10 AS `ID`, 'FN1' AS `FirstName`, 'LN1' AS `LastName`, CAST(NULL AS CHAR(255)) AS `MiddleName`, 'M' AS `Gender`
			UNION ALL
			SELECT 11, 'FN2', NULL, NULL, 'F') `t1`
)
SELECT
	`p`.`FirstName`,
	`p`.`ID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`CTE_1` `p`
WHERE
	`p`.`ID` = 11

