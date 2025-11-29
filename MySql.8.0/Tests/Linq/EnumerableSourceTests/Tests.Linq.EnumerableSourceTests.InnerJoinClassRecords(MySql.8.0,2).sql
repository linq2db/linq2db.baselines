-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 'Janet' AS `FirstName`, 1 AS `ID`, CAST(NULL AS CHAR(255)) AS `LastName`, CAST(NULL AS CHAR(255)) AS `MiddleName`, 'M' AS `Gender`
			UNION ALL
			SELECT 'Doe', 2, NULL, NULL, 'M') `n` ON `p`.`PersonID` = `n`.`ID`

