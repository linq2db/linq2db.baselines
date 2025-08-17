BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `t`,
	`Person` `p2`
WHERE
	`t`.`PersonID` = `p2`.`PersonID` AND `t`.`PersonID` = 1

