-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id"
FROM
	"TicksConversionRow" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id"
FROM
	"TicksConversionRow" r
WHERE
	r."Plain" < r."Date"

-- PostgreSQL.11 PostgreSQL
SELECT
	CASE
		WHEN r."Id" <> 1 THEN r."Date"
		ELSE r."Plain"
	END
FROM
	"TicksConversionRow" r
ORDER BY
	r."Id"

