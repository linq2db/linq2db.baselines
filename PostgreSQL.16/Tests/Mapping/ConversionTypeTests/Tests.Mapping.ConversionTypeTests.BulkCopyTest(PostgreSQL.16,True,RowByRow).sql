-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

