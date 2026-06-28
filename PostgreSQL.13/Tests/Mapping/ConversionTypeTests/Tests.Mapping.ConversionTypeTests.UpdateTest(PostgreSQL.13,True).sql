-- PostgreSQL.13 PostgreSQL13

UPDATE
	"TrimTestTable"
SET
	"Data" = '***III***'
WHERE
	"TrimTestTable"."ID" = 3

-- PostgreSQL.13 PostgreSQL13

UPDATE
	"TrimTestTable"
SET
	"Data" = '***OOO***'
WHERE
	"TrimTestTable"."Data" = '***XXX***'

-- PostgreSQL.13 PostgreSQL13

UPDATE
	"TrimTestTable"
SET
	"Data" = '***SSS***'
WHERE
	"TrimTestTable"."Data" = '***HHH***'

-- PostgreSQL.13 PostgreSQL13

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.13 PostgreSQL13

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

