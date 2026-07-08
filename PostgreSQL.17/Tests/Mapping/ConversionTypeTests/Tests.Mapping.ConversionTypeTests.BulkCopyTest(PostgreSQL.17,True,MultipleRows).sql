-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(1,'***OOO***')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

