BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE '%Joh%' ESCAPE '~' AND
	`p`.`PersonID` = 1

