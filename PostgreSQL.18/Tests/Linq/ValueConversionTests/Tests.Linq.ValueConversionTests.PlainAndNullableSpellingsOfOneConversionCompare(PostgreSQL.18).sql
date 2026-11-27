-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" = r."Date"

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id"
FROM
	"ShiftedDateRow" r
WHERE
	r."Plain" < r."Date"

