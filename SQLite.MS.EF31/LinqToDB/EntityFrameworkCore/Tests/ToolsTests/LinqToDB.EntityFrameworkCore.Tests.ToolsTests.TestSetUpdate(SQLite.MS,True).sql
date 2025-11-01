Parameters:
@__ef_filter__p_0='?'

SELECT "c"."CustomerID", "c"."Address", "c"."City", "c"."CompanyName", "c"."ContactName", "c"."ContactTitle", "c"."Country", "c"."Fax", "c"."IsDeleted", "c"."Phone", "c"."PostalCode", "c"."Region"
FROM "Customers" AS "c"
WHERE @__ef_filter__p_0 OR NOT ("c"."IsDeleted")
LIMIT 1


-- SQLite.MS SQLite
DECLARE @CompanyName NVarChar(13) -- String
SET     @CompanyName = 'Rancho grande'
DECLARE @CustomerId NVarChar(5) -- String
SET     @CustomerId = 'RANCH'

UPDATE
	[Customers]
SET
	[CompanyName] = @CompanyName
WHERE
	NOT [Customers].[IsDeleted] AND [Customers].[CustomerID] = @CustomerId



