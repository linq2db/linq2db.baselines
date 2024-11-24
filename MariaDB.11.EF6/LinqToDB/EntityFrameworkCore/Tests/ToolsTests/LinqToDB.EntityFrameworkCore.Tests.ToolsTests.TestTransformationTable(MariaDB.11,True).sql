﻿--  MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`IsDeleted`,
	`p`.`ProductID`,
	`p`.`ProductName`,
	`p`.`SupplierID`,
	`p`.`CategoryID`,
	`p`.`QuantityPerUnit`,
	`p`.`UnitPrice`,
	`p`.`UnitsInStock`,
	`p`.`UnitsOnOrder`,
	`p`.`ReorderLevel`,
	`p`.`Discontinued`,
	`c_1`.`IsDeleted`,
	`c_1`.`CategoryID`,
	`c_1`.`CategoryName`,
	`c_1`.`Description`,
	`c_1`.`Picture`
FROM
	`Products` `p`
		INNER JOIN `Categories` `c_1` ON `c_1`.`CategoryID` = `p`.`CategoryID`
WHERE
	(`p`.`IsDeleted` = 0 OR `p`.`IsDeleted` = 0) AND (`c_1`.`IsDeleted` = 0 OR `c_1`.`IsDeleted` = 0)



