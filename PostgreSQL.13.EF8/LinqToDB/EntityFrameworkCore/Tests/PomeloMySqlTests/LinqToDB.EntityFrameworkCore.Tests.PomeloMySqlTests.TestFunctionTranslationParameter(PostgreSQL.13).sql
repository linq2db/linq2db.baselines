﻿--  PostgreSQL.9.3 PostgreSQL
DECLARE @value Text(10) -- String
SET     @value = '%anything%'

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
	e."Address" LIKE :value ESCAPE '~'



