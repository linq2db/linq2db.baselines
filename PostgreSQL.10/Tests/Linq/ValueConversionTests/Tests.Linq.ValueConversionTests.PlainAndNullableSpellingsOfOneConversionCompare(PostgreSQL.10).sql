-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" < r."Date"

