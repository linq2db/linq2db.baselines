BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3761Table"
(
	"LETO"     Int       NOT NULL,
	"STEVILKA" Int       NOT NULL,
	"DATUM"    TimeStamp     NULL,
	"SKUPAJ"   decimal       NULL,

	CONSTRAINT "PK_Issue3761Table" PRIMARY KEY ("LETO", "STEVILKA")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @default_1 Timestamp -- DateTime2
SET     @default_1 = '0001-01-01'::date
DECLARE @DATUM Timestamp -- DateTime2
SET     @DATUM = '2019-01-01'::date

SELECT
	t2."Year_1",
	t2."Month_1",
	t2."Sum_1"
FROM
	(
		SELECT
			t1."Year_1",
			t1."Month_1",
			Sum(t1."SKUPAJ") as "Sum_1"
		FROM
			(
				SELECT
					Cast(Floor(Extract(year from Coalesce(n."DATUM", :default_1))) as int) as "Year_1",
					Cast(Floor(Extract(month from Coalesce(n."DATUM", :default_1))) as int) as "Month_1",
					n."SKUPAJ"
				FROM
					"Issue3761Table" n
				WHERE
					n."DATUM" < :DATUM
			) t1
		GROUP BY
			t1."Year_1",
			t1."Month_1"
	) t2
UNION ALL
SELECT
	t4."Year_1",
	t4."Month_1",
	t4."Sum_1"
FROM
	(
		SELECT
			t3."Year_1",
			t3."Month_1",
			Sum(t3."SKUPAJ") as "Sum_1"
		FROM
			(
				SELECT
					Cast(Floor(Extract(year from Coalesce(n_1."DATUM", :default_1))) as int) as "Year_1",
					Cast(Floor(Extract(month from Coalesce(n_1."DATUM", :default_1))) as int) as "Month_1",
					n_1."SKUPAJ"
				FROM
					"Issue3761Table" n_1
				WHERE
					n_1."DATUM" >= :DATUM
			) t3
		GROUP BY
			t3."Year_1",
			t3."Month_1"
	) t4

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

