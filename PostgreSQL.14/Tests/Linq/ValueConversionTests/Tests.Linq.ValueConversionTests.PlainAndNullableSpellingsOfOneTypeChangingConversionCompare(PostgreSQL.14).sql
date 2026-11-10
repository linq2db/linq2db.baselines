-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"TicksConversionRow" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"TicksConversionRow" r
WHERE
	r."Plain" < r."Date"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	CASE
		WHEN r."Id" <> 1 THEN r."Date"
		ELSE r."Plain"
	END
FROM
	"TicksConversionRow" r
ORDER BY
	r."Id"

