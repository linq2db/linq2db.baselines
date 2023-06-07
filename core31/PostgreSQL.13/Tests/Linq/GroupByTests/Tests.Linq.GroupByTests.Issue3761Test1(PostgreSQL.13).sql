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
DECLARE @default Timestamp -- DateTime2
SET     @default = '0001-01-01'::date
DECLARE @DATUM Timestamp -- DateTime2
SET     @DATUM = '2019-01-01'::date

SELECT
	t1."Key_1",
	t1."Key_2",
	Sum(t1."SKUPAJ")
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Coalesce(n."DATUM", :default))) as int) as "Key_1",
			Cast(Floor(Extract(month from Coalesce(n."DATUM", :default))) as int) as "Key_2",
			n."SKUPAJ"
		FROM
			"Issue3761Table" n
		WHERE
			n."DATUM" < :DATUM
	) t1
GROUP BY
	t1."Key_1",
	t1."Key_2"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

