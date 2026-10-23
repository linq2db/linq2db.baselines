-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

