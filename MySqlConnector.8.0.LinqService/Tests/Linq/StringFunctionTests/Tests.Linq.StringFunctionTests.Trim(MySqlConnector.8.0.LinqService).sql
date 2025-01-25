BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`pp`.`PersonID`,
	Concat('  ', `pp`.`FirstName`, ' ')
FROM
	`Person` `pp`
WHERE
	`pp`.`PersonID` = 1 AND Trim(Concat('  ', `pp`.`FirstName`, ' ')) = 'John'

