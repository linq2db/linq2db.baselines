BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TrimTestTable"
(
	"ID"   Int  NOT NULL,
	"Data" text     NULL,

	CONSTRAINT "PK_TrimTestTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(1,'***XXX***'),
(2,'***HHH***'),
(3,'***VVV***')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Data Text(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable"
SET
	"Data" = :Data
WHERE
	"TrimTestTable"."Data" = '***XXX***' AND "TrimTestTable"."Data" IS NOT NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Data Text(9) -- String
SET     @Data = '***SSS***'
DECLARE @p Text(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable"
SET
	"Data" = :Data
WHERE
	"TrimTestTable"."Data" = :p AND "TrimTestTable"."Data" IS NOT NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

