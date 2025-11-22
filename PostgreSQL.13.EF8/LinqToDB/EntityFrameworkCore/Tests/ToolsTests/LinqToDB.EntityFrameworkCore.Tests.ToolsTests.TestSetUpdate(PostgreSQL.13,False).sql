Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT c."CustomerID", c."Address", c."City", c."CompanyName", c."ContactName", c."ContactTitle", c."Country", c."Fax", c."IsDeleted", c."Phone", c."PostalCode", c."Region"
FROM "Customers" AS c
WHERE @__ef_filter__p_0 OR NOT (c."IsDeleted") OR NOT (c."IsDeleted")
LIMIT 1


-- PostgreSQL.13 PostgreSQL
DECLARE @CompanyName Varchar(34) -- String
SET     @CompanyName = 'Ana Trujillo Emparedados y helados'
DECLARE @CustomerId Varchar(5) -- String
SET     @CustomerId = 'ANATR'

UPDATE
	"Customers"
SET
	"CompanyName" = :CompanyName
WHERE
	"Customers"."CustomerID" = :CustomerId



