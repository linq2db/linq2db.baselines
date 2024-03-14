﻿BeforeExecute
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

SELECT
	Max(r."PersonID")
FROM
	"Person" r
UNION ALL
SELECT
	r_1."PersonID"
FROM
	"Person" r_1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3761Table"

