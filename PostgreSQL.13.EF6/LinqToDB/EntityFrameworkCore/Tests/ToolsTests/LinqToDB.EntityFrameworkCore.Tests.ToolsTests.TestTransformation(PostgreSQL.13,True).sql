﻿--  PostgreSQL.9.5 PostgreSQL

SELECT
	p."IsDeleted",
	p."ProductID",
	p."ProductName",
	p."SupplierID",
	p."CategoryID",
	p."QuantityPerUnit",
	p."UnitPrice",
	p."UnitsInStock",
	p."UnitsOnOrder",
	p."ReorderLevel",
	p."Discontinued",
	c_1."IsDeleted",
	c_1."CategoryID",
	c_1."CategoryName",
	c_1."Description",
	c_1."Picture"
FROM
	"Products" p
		INNER JOIN "Categories" c_1 ON c_1."CategoryID" = p."CategoryID" AND p."CategoryID" IS NOT NULL
WHERE
	(NOT p."IsDeleted" OR NOT p."IsDeleted") AND (NOT c_1."IsDeleted" OR NOT c_1."IsDeleted")



