BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Total"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Total"
(
	"Id"    Int  NOT NULL,
	"Sum"   Int  NOT NULL,
	"Label" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Entry"
(
	"Id"      Int NOT NULL,
	"TotalId" Int NOT NULL,
	"Sum"     Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

UPDATE
	"Total"
SET
	"Sum" = "Total"."Sum" + t1."SumAggr"
FROM
	(
		SELECT
			eg."TotalId",
			SUM(eg."Sum") as "SumAggr"
		FROM
			"Entry" eg
		GROUP BY
			eg."TotalId"
	) t1
WHERE
	"Total"."Id" = t1."TotalId"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Total"

