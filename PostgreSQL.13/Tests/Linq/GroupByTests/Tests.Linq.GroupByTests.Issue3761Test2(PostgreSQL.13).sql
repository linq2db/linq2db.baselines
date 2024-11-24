BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3761Table"
(
	"LETO"     Int       NOT NULL,
	"STEVILKA" Int       NOT NULL,
	"DATUM"    TimeStamp     NULL,
	"SKUPAJ"   decimal       NULL,

	CONSTRAINT "PK_Issue3761Table" PRIMARY KEY ("LETO", "STEVILKA")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = '2019-01-01'::date

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
			n."DATUM" < :p
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
				WHEN n_1."DATUM" IS NOT NULL THEN n_1."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Year_1",
			Floor(Extract(month From CASE
				WHEN n_1."DATUM" IS NOT NULL THEN n_1."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Month_1",
			n_1."SKUPAJ"
		FROM
			"Issue3761Table" n_1
		WHERE
			n_1."DATUM" >= :p
	) t2
GROUP BY
	t2."Year_1",
	t2."Month_1"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

