﻿BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

UPDATE
	"Total"
SET
	"Sum" = "Total"."Sum" + t1."SumAggr"
FROM
	(
		SELECT
			SUM(eg."Sum") as "SumAggr",
			eg."TotalId"
		FROM
			"Entry" eg
		GROUP BY
			eg."TotalId"
	) t1
WHERE
	"Total"."Label" = 'spendings' AND "Total"."Id" = t1."TotalId"

