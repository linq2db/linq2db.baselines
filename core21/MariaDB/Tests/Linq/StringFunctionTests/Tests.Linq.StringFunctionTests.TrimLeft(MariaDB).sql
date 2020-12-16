BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`pp`.`ID`,
	`pp`.`Name_1`
FROM
	(
		SELECT
			Concat('  ', `p`.`FirstName`, ' ') as `Name`,
			`p`.`PersonID` as `ID`,
			`p`.`FirstName` as `Name_1`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
	) `pp`
WHERE
	LTrim(`pp`.`Name`) = 'John '

