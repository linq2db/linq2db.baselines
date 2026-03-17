-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(Left(`p`.`FirstName`, 2), '123', RIGHT(`p`.`FirstName`, CHAR_LENGTH(`p`.`FirstName`) - 3)) = 'Jo123n' AND
	`p`.`PersonID` = 1

