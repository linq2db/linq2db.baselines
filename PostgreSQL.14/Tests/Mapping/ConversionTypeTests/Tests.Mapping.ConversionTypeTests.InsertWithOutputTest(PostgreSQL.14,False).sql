-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
SELECT
	t1."ID" + 1,
	'***HHH***'
FROM
	"TrimTestTable" t1
RETURNING
	"TrimTestTable"."ID",
	"TrimTestTable"."Data"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

