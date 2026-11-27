-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" < r."Date"

