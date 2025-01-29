--  MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Products`
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			`Order Details` `a_OrderDetails`
		WHERE
			`Products`.`ProductID` = `a_OrderDetails`.`ProductID`
	) > 0 AND
	`Products`.`ProductName` LIKE 'a%' ESCAPE '~' AND `Products`.`ProductName` = 'a'



