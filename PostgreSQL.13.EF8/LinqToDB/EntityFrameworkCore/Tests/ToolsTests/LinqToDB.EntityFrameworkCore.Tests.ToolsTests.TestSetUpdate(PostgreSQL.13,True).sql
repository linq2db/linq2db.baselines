Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT c."CustomerID", c."Address", c."City", c."CompanyName", c."ContactName", c."ContactTitle", c."Country", c."Fax", c."IsDeleted", c."Phone", c."PostalCode", c."Region"
FROM "Customers" AS c
WHERE @__ef_filter__p_0 OR NOT (c."IsDeleted") OR NOT (c."IsDeleted")
LIMIT 1


-- PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @CompanyName Varchar(19) -- String
SET     @CompanyName = 'Alfreds Futterkiste'
DECLARE @CustomerId Varchar(5) -- String
SET     @CustomerId = 'ALFKI'

UPDATE
	"Customers"
SET
	"CompanyName" = :CompanyName
WHERE
	NOT "Customers"."IsDeleted" AND "Customers"."CustomerID" = :CustomerId



