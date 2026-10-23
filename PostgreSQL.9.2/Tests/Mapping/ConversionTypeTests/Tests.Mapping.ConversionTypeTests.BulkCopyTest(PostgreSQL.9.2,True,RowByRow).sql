-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

