-- MySql.5.7.MySqlConnector MySql57

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
	(
		SELECT
			COUNT(*)
		FROM
			`Order Details` `e_1`
		WHERE
			`e`.`ProductID` = `e_1`.`ProductID`
	) > 0 AND
	`e`.`ProductName` LIKE 'a%' ESCAPE '~'



