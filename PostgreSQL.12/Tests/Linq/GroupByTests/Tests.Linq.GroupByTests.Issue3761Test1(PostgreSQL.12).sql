BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3761Table"
(
	"LETO"     Int       NOT NULL,
	"STEVILKA" Int       NOT NULL,
	"DATUM"    TimeStamp     NULL,
	"SKUPAJ"   decimal       NULL,

	CONSTRAINT "PK_Issue3761Table" PRIMARY KEY ("LETO", "STEVILKA")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @DATUM Timestamp -- DateTime2
SET     @DATUM = '2019-01-01'::date

SELECT
	t1."Year_1",
	t1."Month_1",
	SUM(t1."SKUPAJ")
FROM
	(
		SELECT
			Floor(Extract(year From CASE
				WHEN n."DATUM" IS NOT NULL THEN n."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Year_1",
			Floor(Extract(month From CASE
				WHEN n."DATUM" IS NOT NULL THEN n."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Month_1",
			n."SKUPAJ"
		FROM
			"Issue3761Table" n
		WHERE
			n."DATUM" < :DATUM
	) t1
GROUP BY
	t1."Year_1",
	t1."Month_1"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

