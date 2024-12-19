BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table1"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2815Table1"
(
	"SRC_BIC"       Int NOT NULL,
	"DES_BIC"       Int NOT NULL,
	"IDF"           Int NOT NULL,
	"TREA_CENT"     Int NOT NULL,
	"NOT_HANDLED"   Int NOT NULL,
	"TRANS_CHANNEL" Int     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table2"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2815Table2"
(
	"ISO"  Int     NOT NULL,
	"SEPA" Boolean NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table3"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2815Table3"
(
	"TreasuryCenter" Int NOT NULL,
	"BIC"            Int NOT NULL,
	"Sepa"           Int NOT NULL,
	"Trans_Channel"  Int NOT NULL,
	"Idf"            Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

UPDATE
	"Issue2815Table1"
SET
	"TRANS_CHANNEL" = channel."Trans_Channel",
	"IDF" = channel."Idf"
FROM
	"Issue2815Table2" source,
	"Issue2815Table2" destination,
	"Issue2815Table3" channel
WHERE
	"Issue2815Table1"."NOT_HANDLED" = 2 AND
	"Issue2815Table1"."TRANS_CHANNEL" IS NULL AND
	source."ISO" = "Issue2815Table1"."SRC_BIC" AND
	destination."ISO" = "Issue2815Table1"."DES_BIC" AND
	channel."TreasuryCenter" = "Issue2815Table1"."TREA_CENT" AND
	channel."BIC" = "Issue2815Table1"."SRC_BIC" AND
	channel."Sepa" = CASE
		WHEN source."SEPA" = True AND destination."SEPA" = True THEN CASE
			WHEN source."ISO" = destination."ISO" OR source."ISO" IS NULL AND destination."ISO" IS NULL
				THEN 0
			ELSE 1
		END
		ELSE 2
	END

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table3"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table2"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2815Table1"

