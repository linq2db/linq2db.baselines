BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Total"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Total"
(
	"Id"    Int  NOT NULL,
	"Sum"   Int  NOT NULL,
	"Label" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Entry"
(
	"Id"      Int NOT NULL,
	"TotalId" Int NOT NULL,
	"Sum"     Int NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"Total"
SET
	"Sum" = "Total"."Sum" + r."SumAggr"
FROM
	(
		SELECT
			eg."TotalId" as "Key_1",
			SUM(eg."Sum") as "SumAggr"
		FROM
			"Entry" eg
		GROUP BY
			eg."TotalId"
	) r
WHERE
	"Total"."Label" = 'spendings' AND "Total"."Label" IS NOT NULL AND
	"Total"."Id" = r."Key_1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Total"

