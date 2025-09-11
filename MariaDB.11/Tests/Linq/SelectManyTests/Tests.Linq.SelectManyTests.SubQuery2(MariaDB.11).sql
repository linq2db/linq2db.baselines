BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `p`
		CROSS JOIN `Person` `p2`
WHERE
	(`p`.`PersonID` = 1 OR `p`.`PersonID` = 2) AND `p2`.`PersonID` <> 2 AND
	`p`.`PersonID` = `p2`.`PersonID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `p`
		CROSS JOIN `Person` `p2`
WHERE
	(`p`.`PersonID` = 1 OR `p`.`PersonID` = 2) AND `p2`.`PersonID` <> 2 AND
	`p`.`PersonID` = `p2`.`PersonID`

