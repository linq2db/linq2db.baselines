-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Data Text(9) -- String
SET     @Data = '***OOO***'

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	:ID,
	:Data
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

