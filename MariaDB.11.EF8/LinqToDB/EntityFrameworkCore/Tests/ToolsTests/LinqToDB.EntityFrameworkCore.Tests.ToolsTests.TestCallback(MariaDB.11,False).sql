-- MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`Products`
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			`Order Details` `e`
		WHERE
			`Products`.`ProductID` = `e`.`ProductID`
	) > 0 AND
	`Products`.`ProductName` LIKE 'a%' ESCAPE '~' AND `Products`.`ProductName` = 'a'



