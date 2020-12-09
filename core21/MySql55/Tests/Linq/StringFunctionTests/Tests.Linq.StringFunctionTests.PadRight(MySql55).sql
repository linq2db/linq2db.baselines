BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(RPad(`p`.`FirstName`, 6, ' '), '123') = 'John  123' AND `p`.`PersonID` = 1

