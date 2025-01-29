--  MySql.8.0.MySqlConnector MySql80

SELECT
	`e`.`IsDeleted`,
	`e`.`ProductID`,
	`e`.`ProductName`,
	`e`.`SupplierID`,
	`e`.`CategoryID`,
	`e`.`QuantityPerUnit`,
	`e`.`UnitPrice`,
	`e`.`UnitsInStock`,
	`e`.`UnitsOnOrder`,
	`e`.`ReorderLevel`,
	`e`.`Discontinued`
FROM
	`Products` `e`
WHERE
	(NOT `e`.`IsDeleted` OR NOT `e`.`IsDeleted`) AND (
		SELECT
			COUNT(*)
		FROM
			`Order Details` `a_OrderDetails`
		WHERE
			`e`.`ProductID` = `a_OrderDetails`.`ProductID`
	) > 0 AND
	`e`.`ProductName` LIKE 'a%' ESCAPE '~'



