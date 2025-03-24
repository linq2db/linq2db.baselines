﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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
	"Total"."Id" = t1."TotalId"

