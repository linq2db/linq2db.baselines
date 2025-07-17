-- MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Products`
WHERE
	NOT `Products`.`IsDeleted` AND
	(
		SELECT
			COUNT(*)
		FROM
			`Order Details` `e`
		WHERE
			NOT `e`.`IsDeleted` AND `Products`.`ProductID` = `e`.`ProductID`
	) > 0 AND
	`Products`.`ProductName` LIKE 'a%' ESCAPE '~' AND
	`Products`.`ProductName` = 'a'



