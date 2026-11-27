-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" < r."Date"

