BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('JOHN', `p`.`FirstName`, Length(`p`.`FirstName`) - 3) = (Length(`p`.`FirstName`) - 3) AND
	`p`.`PersonID` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	(LOCATE('JOHN', `p`.`FirstName`, Length(`p`.`FirstName`) - 3) <> (Length(`p`.`FirstName`) - 3)) AND
	`p`.`PersonID` = 1

