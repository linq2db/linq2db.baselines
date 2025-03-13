Parameters:
@__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT `p`.`ProductID`, `p`.`CategoryID`, `p`.`Discontinued`, `p`.`IsDeleted`, `p`.`ProductName`, `p`.`QuantityPerUnit`, `p`.`ReorderLevel`, `p`.`SupplierID`, `p`.`UnitPrice`, `p`.`UnitsInStock`, `p`.`UnitsOnOrder`, `t`.`ProductID`, `t`.`CategoryID`, `t`.`Discontinued`, `t`.`IsDeleted`, `t`.`ProductName`, `t`.`QuantityPerUnit`, `t`.`ReorderLevel`, `t`.`SupplierID`, `t`.`UnitPrice`, `t`.`UnitsInStock`, `t`.`UnitsOnOrder`
FROM `Products` AS `p`
CROSS JOIN (
    SELECT `p0`.`ProductID`, `p0`.`CategoryID`, `p0`.`Discontinued`, `p0`.`IsDeleted`, `p0`.`ProductName`, `p0`.`QuantityPerUnit`, `p0`.`ReorderLevel`, `p0`.`SupplierID`, `p0`.`UnitPrice`, `p0`.`UnitsInStock`, `p0`.`UnitsOnOrder`
    FROM `Products` AS `p0`
    WHERE ((@__ef_filter__p_0 OR NOT (`p0`.`IsDeleted`)) OR NOT (`p0`.`IsDeleted`)) AND ((
        SELECT COUNT(*)
        FROM `Order Details` AS `o0`
        WHERE ((@__ef_filter__p_1 OR NOT (`o0`.`IsDeleted`)) OR NOT (`o0`.`IsDeleted`)) AND (`p0`.`ProductID` = `o0`.`ProductID`)) > 0)
) AS `t`
WHERE (((@__ef_filter__p_0 OR NOT (`p`.`IsDeleted`)) OR NOT (`p`.`IsDeleted`)) AND ((
    SELECT COUNT(*)
    FROM `Order Details` AS `o`
    WHERE ((@__ef_filter__p_1 OR NOT (`o`.`IsDeleted`)) OR NOT (`o`.`IsDeleted`)) AND (`p`.`ProductID` = `o`.`ProductID`)) > 0)) AND (`p`.`ProductID` = `t`.`ProductID`)
ORDER BY `p`.`ProductID`


-- MariaDB.10.MySqlConnector MySql

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
	`e`.`Discontinued`,
	`pd2`.`IsDeleted`,
	`pd2`.`ProductID`,
	`pd2`.`ProductName`,
	`pd2`.`SupplierID`,
	`pd2`.`CategoryID`,
	`pd2`.`QuantityPerUnit`,
	`pd2`.`UnitPrice`,
	`pd2`.`UnitsInStock`,
	`pd2`.`UnitsOnOrder`,
	`pd2`.`ReorderLevel`,
	`pd2`.`Discontinued`
FROM
	`Products` `e`,
	`Products` `pd2`
WHERE
	(NOT `e`.`IsDeleted` OR NOT `e`.`IsDeleted`) AND
	(
		SELECT
			COUNT(*)
		FROM
			`Order Details` `e_1`
		WHERE
			(NOT `e_1`.`IsDeleted` OR NOT `e_1`.`IsDeleted`) AND
			`e`.`ProductID` = `e_1`.`ProductID`
	) > 0 AND
	(NOT `pd2`.`IsDeleted` OR NOT `pd2`.`IsDeleted`) AND
	(
		SELECT
			COUNT(*)
		FROM
			`Order Details` `e_2`
		WHERE
			(NOT `e_2`.`IsDeleted` OR NOT `e_2`.`IsDeleted`) AND
			`pd2`.`ProductID` = `e_2`.`ProductID`
	) > 0 AND
	`e`.`ProductID` = `pd2`.`ProductID`
ORDER BY
	`e`.`ProductID`



