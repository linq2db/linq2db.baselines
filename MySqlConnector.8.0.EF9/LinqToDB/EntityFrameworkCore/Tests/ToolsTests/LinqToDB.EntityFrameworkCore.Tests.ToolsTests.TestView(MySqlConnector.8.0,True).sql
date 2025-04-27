-- MySql.8.0.MySqlConnector MySql80

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
			`Order Details` `e_1`
		WHERE
			(NOT `e_1`.`IsDeleted` OR NOT `e_1`.`IsDeleted`) AND
			`e`.`ProductID` = `e_1`.`ProductID`
	) > 0 AND
	`e`.`ProductName` LIKE 'a%' ESCAPE '~'



