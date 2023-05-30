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
DECLARE @_default Timestamp -- DateTime2
SET     @_default = '0001-01-01'::date
DECLARE @DATUM Timestamp -- DateTime2
SET     @DATUM = '2019-01-01'::date

SELECT
	t1."Year_1",
	t1."Month_1",
	Sum(t1."SKUPAJ")
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Coalesce(n."DATUM", :_default))) as int) as "Year_1",
			Cast(Floor(Extract(month from Coalesce(n."DATUM", :_default))) as int) as "Month_1",
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
	Sum(t2."SKUPAJ")
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Coalesce(n_1."DATUM", :_default))) as int) as "Year_1",
			Cast(Floor(Extract(month from Coalesce(n_1."DATUM", :_default))) as int) as "Month_1",
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

