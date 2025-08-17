BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '456')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND Concat('123', `p`.`FirstName`, '456') = '123John456'

