BeforeExecute
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
	Concat('123', CASE
		WHEN LENGTH(`p`.`FirstName`) < CAST(6 AS SIGNED) THEN LPAD(`p`.`FirstName`, CAST(6 AS SIGNED), '*')
		ELSE `p`.`FirstName`
	END) = '123**John' AND
	`p`.`PersonID` = 1

