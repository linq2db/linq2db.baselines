BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`PersonID` = 3 AND (`r`.`MiddleName` = 'Ko' OR `r`.`MiddleName` IS NULL)

