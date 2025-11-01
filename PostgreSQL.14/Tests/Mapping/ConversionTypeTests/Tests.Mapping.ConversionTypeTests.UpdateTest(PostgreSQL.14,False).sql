-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Data Text(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable"
SET
	"Data" = :Data
WHERE
	"TrimTestTable"."ID" = :ID

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Data Text(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable"
SET
	"Data" = :Data
WHERE
	"TrimTestTable"."Data" = '***XXX***'

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Data Text(9) -- String
SET     @Data = '***SSS***'
DECLARE @p Text(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable"
SET
	"Data" = :Data
WHERE
	"TrimTestTable"."Data" = :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

