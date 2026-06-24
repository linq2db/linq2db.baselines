-- PostgreSQL.15 PostgreSQL13

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

-- PostgreSQL.15 PostgreSQL13

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.15 PostgreSQL13

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

