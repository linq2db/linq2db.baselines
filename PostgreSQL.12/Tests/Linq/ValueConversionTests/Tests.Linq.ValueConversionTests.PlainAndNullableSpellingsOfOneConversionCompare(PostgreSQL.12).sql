-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" < r."Date"

