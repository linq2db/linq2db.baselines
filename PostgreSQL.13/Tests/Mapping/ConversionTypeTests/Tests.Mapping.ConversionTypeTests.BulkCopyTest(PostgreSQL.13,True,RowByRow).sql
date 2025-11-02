-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	1,
	'***OOO***'
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

