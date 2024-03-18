BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`pp`.`PersonID`,
	Concat('  ', `pp`.`FirstName`, ' ')
FROM
	`Person` `pp`
WHERE
	`pp`.`PersonID` = 1 AND LTRIM(Concat('  ', `pp`.`FirstName`, ' ')) = 'John '

