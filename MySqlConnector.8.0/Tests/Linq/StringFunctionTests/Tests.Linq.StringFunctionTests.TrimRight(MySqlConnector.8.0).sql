-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`pp`.`ID`,
	`pp`.`Name`
FROM
	(
		SELECT
			Concat('  ', `p`.`FirstName`, ' ') as `Name`,
			`p`.`PersonID` as `ID`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	) `pp`
WHERE
	(TRIM(TRAILING FROM `pp`.`Name`)) = '  John'

