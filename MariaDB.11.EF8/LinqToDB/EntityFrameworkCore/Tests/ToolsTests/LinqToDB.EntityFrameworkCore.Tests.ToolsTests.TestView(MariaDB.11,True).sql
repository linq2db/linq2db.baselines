-- MariaDB.10.MySqlConnector MariaDB

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
	NOT `e`.`IsDeleted` AND (
		SELECT
			COUNT(*)
		FROM
			`Order Details` `e_1`
		WHERE
			NOT `e_1`.`IsDeleted` AND `e`.`ProductID` = `e_1`.`ProductID`
	) > 0 AND
	`e`.`ProductName` LIKE 'a%' ESCAPE '~'



