-- PostgreSQL.19 PostgreSQL12
SELECT
	e."IsDeleted",
	e."CustomerID",
	e."CompanyName",
	e."ContactName",
	e."ContactTitle",
	e."Address",
	e."City",
	e."Region",
	e."PostalCode",
	e."Country",
	e."Phone",
	e."Fax"
FROM
	"Customers" e
WHERE
	e."Address" LIKE '%a%' ESCAPE '~'



Parameters:
@ef_filter__p1='?' (DbType = Boolean)

SELECT c."CustomerID", c."Address", c."City", c."CompanyName", c."ContactName", c."ContactTitle", c."Country", c."Fax", c."IsDeleted", c."Phone", c."PostalCode", c."Region"
FROM "Customers" AS c
WHERE (@ef_filter__p1 OR NOT (c."IsDeleted") OR NOT (c."IsDeleted")) AND c."Address" LIKE '%a%'


