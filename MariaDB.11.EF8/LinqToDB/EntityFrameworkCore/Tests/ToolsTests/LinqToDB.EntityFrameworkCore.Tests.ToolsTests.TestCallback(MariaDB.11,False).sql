-- MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Products`
WHERE
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Order Details` `e`
		WHERE
			`Products`.`ProductID` = `e`.`ProductID`
	) > 0 AND
	`Products`.`ProductName` LIKE 'a%' ESCAPE '~' AND `Products`.`ProductName` = 'a'



