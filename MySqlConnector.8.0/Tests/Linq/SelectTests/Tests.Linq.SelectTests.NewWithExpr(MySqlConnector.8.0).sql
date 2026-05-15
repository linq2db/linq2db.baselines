-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	REGEXP_REPLACE(Concat(`p`.`FirstName`, '1'), '(?-i)[]+$', '')
FROM
	`Person` `p`

