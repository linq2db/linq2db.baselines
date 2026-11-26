-- SQLite.MS SQLite
SELECT
	[e].[IsDeleted],
	[e].[CustomerID],
	[e].[CompanyName],
	[e].[ContactName],
	[e].[ContactTitle],
	[e].[Address],
	[e].[City],
	[e].[Region],
	[e].[PostalCode],
	[e].[Country],
	[e].[Phone],
	[e].[Fax]
FROM
	[Customers] [e]
WHERE
	[e].[Address] LIKE '%a%' ESCAPE '~'



Parameters:
@__ef_filter__p_0='?'

SELECT "c"."CustomerID", "c"."Address", "c"."City", "c"."CompanyName", "c"."ContactName", "c"."ContactTitle", "c"."Country", "c"."Fax", "c"."IsDeleted", "c"."Phone", "c"."PostalCode", "c"."Region"
FROM "Customers" AS "c"
WHERE (@__ef_filter__p_0 OR NOT ("c"."IsDeleted")) AND (('a' = '') OR (instr("c"."Address", 'a') > 0))


