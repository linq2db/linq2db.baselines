BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE '%Joh%' ESCAPE '~' AND `p`.`PersonID` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` NOT LIKE '%Joh%' ESCAPE '~' AND `p`.`PersonID` = 1

