BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3761Table"
(
	"LETO"     Int       NOT NULL,
	"STEVILKA" Int       NOT NULL,
	"DATUM"    TimeStamp     NULL,
	"SKUPAJ"   decimal       NULL,

	CONSTRAINT "PK_Issue3761Table" PRIMARY KEY ("LETO", "STEVILKA")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = '0001-01-01'::date
DECLARE @DATUM Timestamp -- DateTime2
SET     @DATUM = '2019-01-01'::date
DECLARE @p_1 Timestamp -- DateTime2
SET     @p_1 = '0001-01-01'::date

SELECT
	t1."Year_1",
	t1."Month_1",
	SUM(t1."SKUPAJ")
FROM
	(
		SELECT
			Floor(Extract(year From CASE
				WHEN n."DATUM" IS NULL THEN :p
				ELSE n."DATUM"
			END))::Int as "Year_1",
			Floor(Extract(month From CASE
				WHEN n."DATUM" IS NULL THEN :p
				ELSE n."DATUM"
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
UNION ALL
SELECT
	t2."Year_1",
	t2."Month_1",
	SUM(t2."SKUPAJ")
FROM
	(
		SELECT
			Floor(Extract(year From CASE
				WHEN n_1."DATUM" IS NULL THEN :p_1
				ELSE n_1."DATUM"
			END))::Int as "Year_1",
			Floor(Extract(month From CASE
				WHEN n_1."DATUM" IS NULL THEN :p_1
				ELSE n_1."DATUM"
			END))::Int as "Month_1",
			n_1."SKUPAJ"
		FROM
			"Issue3761Table" n_1
		WHERE
			n_1."DATUM" >= :DATUM
	) t2
GROUP BY
	t2."Year_1",
	t2."Month_1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

