BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Total"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Total"
(
	"Id"    Int  NOT NULL,
	"Sum"   Int  NOT NULL,
	"Label" text     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Entry"
(
	"Id"      Int NOT NULL,
	"TotalId" Int NOT NULL,
	"Sum"     Int NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL (asynchronously)

UPDATE
	"Total"
SET
	"Sum" = "Total"."Sum" + r."SumAggr"
FROM
	(
		SELECT
			t1."TotalId",
			Sum(t1."Sum") as "SumAggr"
		FROM
			"Entry" t1
		GROUP BY
			t1."TotalId"
	) r
WHERE
	"Total"."Label" = 'spendings' AND "Total"."Id" = r."TotalId"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Total"

