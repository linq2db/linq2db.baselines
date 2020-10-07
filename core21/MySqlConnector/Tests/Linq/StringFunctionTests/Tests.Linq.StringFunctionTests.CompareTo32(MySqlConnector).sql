BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	0 <= CASE
		WHEN `p`.`FirstName` > '55'
			THEN 1
		WHEN `p`.`FirstName` = '55'
			THEN 0
		ELSE -1
	END AND
	`p`.`PersonID` = 1

