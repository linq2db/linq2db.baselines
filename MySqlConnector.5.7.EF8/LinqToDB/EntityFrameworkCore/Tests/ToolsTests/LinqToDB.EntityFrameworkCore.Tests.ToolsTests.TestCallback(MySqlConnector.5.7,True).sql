--  MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Products`
WHERE
	(NOT `Products`.`IsDeleted` OR NOT `Products`.`IsDeleted`) AND
	(
		SELECT
			COUNT(*)
		FROM
			`Order Details` `a_OrderDetails`
		WHERE
			`Products`.`ProductID` = `a_OrderDetails`.`ProductID`
	) > 0 AND
	`Products`.`ProductName` LIKE 'a%' ESCAPE '~' AND
	`Products`.`ProductName` = 'a'



