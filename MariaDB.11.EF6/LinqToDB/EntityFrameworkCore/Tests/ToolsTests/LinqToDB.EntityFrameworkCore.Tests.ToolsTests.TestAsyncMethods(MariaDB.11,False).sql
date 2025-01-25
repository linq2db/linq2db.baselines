﻿Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT `p`.`ProductID`, `p`.`CategoryID`, `p`.`Discontinued`, `p`.`IsDeleted`, `p`.`ProductName`, `p`.`QuantityPerUnit`, `p`.`ReorderLevel`, `p`.`SupplierID`, `p`.`UnitPrice`, `p`.`UnitsInStock`, `p`.`UnitsOnOrder`
FROM `Products` AS `p`
WHERE ((@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)) AND (`p`.`ProductName` LIKE '%a%')


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT `p`.`ProductID`, `p`.`CategoryID`, `p`.`Discontinued`, `p`.`IsDeleted`, `p`.`ProductName`, `p`.`QuantityPerUnit`, `p`.`ReorderLevel`, `p`.`SupplierID`, `p`.`UnitPrice`, `p`.`UnitsInStock`, `p`.`UnitsOnOrder`
FROM `Products` AS `p`
WHERE ((@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)) AND (`p`.`ProductName` LIKE '%a%')


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT EXISTS (
    SELECT 1
    FROM `Products` AS `p`
    WHERE ((@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)) AND (`p`.`ProductName` LIKE '%a%'))


--  MariaDB.10.MySqlConnector MySql (asynchronously)

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
	LOCATE('a', `e`.`ProductName`) > 0



--  MariaDB.10.MySqlConnector MySql (asynchronously)

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
	LOCATE('a', `e`.`ProductName`) > 0



--  MariaDB.10.MySqlConnector MySql (asynchronously)

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
	LOCATE('a', `e`.`ProductName`) > 0



--  MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Products` `e`
		WHERE
			LOCATE('a', `e`.`ProductName`) > 0
	) as `c1`



