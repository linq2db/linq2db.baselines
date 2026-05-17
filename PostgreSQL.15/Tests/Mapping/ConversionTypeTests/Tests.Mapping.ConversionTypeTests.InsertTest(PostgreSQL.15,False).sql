-- PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Data Text(9) -- String
SET     @Data = '***HHH***'

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

-- PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

