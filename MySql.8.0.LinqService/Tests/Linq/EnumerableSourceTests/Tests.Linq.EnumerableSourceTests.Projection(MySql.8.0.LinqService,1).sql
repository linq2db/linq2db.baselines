BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`ID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	(
		SELECT 'Janet' AS `FirstName`, 2 AS `ID`, CAST(NULL AS CHAR(255)) AS `LastName`, CAST(NULL AS CHAR(255)) AS `MiddleName`, 'M' AS `Gender`
		UNION ALL
		SELECT 'Doe', 3, NULL, NULL, 'M') `t1`

