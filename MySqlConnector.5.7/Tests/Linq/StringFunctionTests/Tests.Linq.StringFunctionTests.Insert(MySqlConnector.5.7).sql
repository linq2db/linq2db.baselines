-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN CHAR_LENGTH(`p`.`FirstName`) = 2 THEN Concat(`p`.`FirstName`, '123')
		ELSE Concat(Left(`p`.`FirstName`, 2), '123', RIGHT(`p`.`FirstName`, CHAR_LENGTH(`p`.`FirstName`) - 2))
	END = 'Jo123hn' AND
	`p`.`PersonID` = 1

