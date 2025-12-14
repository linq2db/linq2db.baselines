-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Concat(Left(`p`.`FirstName`, 1), RIGHT(`p`.`FirstName`, CHAR_LENGTH(`p`.`FirstName`) - 3)) = 'Jn' AND
	`p`.`PersonID` = 1

