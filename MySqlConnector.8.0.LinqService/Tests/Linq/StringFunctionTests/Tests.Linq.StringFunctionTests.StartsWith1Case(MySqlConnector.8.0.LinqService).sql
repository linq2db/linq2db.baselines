BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE 'Jo%' ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE 'jo%' ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE 'Jo%' ESCAPE '~' AND
	`p`.`PersonID` = 1

