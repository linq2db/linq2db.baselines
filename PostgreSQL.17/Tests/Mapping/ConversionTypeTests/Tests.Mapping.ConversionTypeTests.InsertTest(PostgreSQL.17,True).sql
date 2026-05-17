-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	2,
	'***HHH***'
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

