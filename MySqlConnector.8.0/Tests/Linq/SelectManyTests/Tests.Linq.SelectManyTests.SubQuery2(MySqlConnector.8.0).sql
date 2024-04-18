BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	`p_1`.`FirstName`
FROM
	`Person` `p`,
	`Person` `p_1`
WHERE
	`p`.`PersonID` = `p_1`.`PersonID` AND (`p`.`PersonID` = 1 OR `p`.`PersonID` = 2) AND
	`p_1`.`PersonID` <> 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	`p_1`.`FirstName`
FROM
	`Person` `p`,
	`Person` `p_1`
WHERE
	`p`.`PersonID` = `p_1`.`PersonID` AND (`p`.`PersonID` = 1 OR `p`.`PersonID` = 2) AND
	`p_1`.`PersonID` <> 2

