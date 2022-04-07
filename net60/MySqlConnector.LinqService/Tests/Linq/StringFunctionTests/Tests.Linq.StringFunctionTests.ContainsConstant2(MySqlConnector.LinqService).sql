BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('o%h', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('o%h', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

