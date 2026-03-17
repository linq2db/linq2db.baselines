-- PostgreSQL.13 PostgreSQL

SELECT
	e."IsDeleted",
	e."ProductID",
	e."ProductName",
	e."SupplierID",
	e."CategoryID",
	e."QuantityPerUnit",
	e."UnitPrice",
	e."UnitsInStock",
	e."UnitsOnOrder",
	e."ReorderLevel",
	e."Discontinued"
FROM
	"Products" e
		LEFT JOIN "Products" op ON op."ProductID" <> e."ProductID" AND op."ProductName" = e."ProductName" AND NOT op."IsDeleted"
WHERE
	NOT e."IsDeleted" AND op."ProductID" IS NULL



