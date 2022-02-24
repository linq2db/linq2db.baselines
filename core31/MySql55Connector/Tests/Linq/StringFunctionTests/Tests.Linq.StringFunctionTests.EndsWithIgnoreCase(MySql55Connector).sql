BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE '%JOHN' ESCAPE '~' AND `p`.`PersonID` = 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` NOT LIKE '%JOHN' ESCAPE '~' AND `p`.`PersonID` = 1

