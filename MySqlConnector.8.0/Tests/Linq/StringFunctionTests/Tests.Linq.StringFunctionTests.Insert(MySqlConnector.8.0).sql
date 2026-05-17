-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
		WHEN CHAR_LENGTH(`p`.`FirstName`) = 2 THEN CONCAT(`p`.`FirstName`, '123')
		ELSE CONCAT(Left(`p`.`FirstName`, 2), '123', RIGHT(`p`.`FirstName`, CHAR_LENGTH(`p`.`FirstName`) - 2))
	END = 'Jo123hn' AND
	`p`.`PersonID` = 1

