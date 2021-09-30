BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('joh', Lower(`p`.`FirstName`)) = 1 AND `p`.`PersonID` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('joh', Lower(`p`.`FirstName`)) <> 1) AND `p`.`PersonID` = 1

