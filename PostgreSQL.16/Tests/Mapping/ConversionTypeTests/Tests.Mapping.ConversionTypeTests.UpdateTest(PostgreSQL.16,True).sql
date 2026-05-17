-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"TrimTestTable"
SET
	"Data" = '***III***'
WHERE
	"TrimTestTable"."ID" = 3

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"TrimTestTable"
SET
	"Data" = '***OOO***'
WHERE
	"TrimTestTable"."Data" = '***XXX***'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"TrimTestTable"
SET
	"Data" = '***SSS***'
WHERE
	"TrimTestTable"."Data" = '***HHH***'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

