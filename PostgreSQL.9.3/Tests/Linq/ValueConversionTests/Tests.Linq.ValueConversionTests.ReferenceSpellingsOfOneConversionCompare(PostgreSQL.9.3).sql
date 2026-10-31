-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"ReferenceConversionRow" r
WHERE
	r."Plain" = r."Guarded" OR r."Plain" IS NULL AND r."Guarded" IS NULL

