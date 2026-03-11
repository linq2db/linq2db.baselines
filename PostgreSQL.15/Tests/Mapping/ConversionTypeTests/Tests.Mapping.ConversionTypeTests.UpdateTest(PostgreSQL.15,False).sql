-- PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.15 PostgreSQL
DECLARE @Data Text(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable"
SET
	"Data" = :Data
WHERE
	"TrimTestTable"."Data" = '***XXX***'

-- PostgreSQL.15 PostgreSQL
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

