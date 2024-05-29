BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('jOh', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

