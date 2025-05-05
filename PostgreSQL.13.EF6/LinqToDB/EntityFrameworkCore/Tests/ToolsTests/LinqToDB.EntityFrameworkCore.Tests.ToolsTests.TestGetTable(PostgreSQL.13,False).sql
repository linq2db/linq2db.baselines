-- PostgreSQL.9.5 PostgreSQL (asynchronously)

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
	e."City" IS NOT NULL



