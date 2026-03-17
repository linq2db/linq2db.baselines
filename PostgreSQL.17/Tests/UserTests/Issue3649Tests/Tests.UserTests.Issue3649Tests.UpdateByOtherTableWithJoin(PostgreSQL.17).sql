-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
	"Total"."Label" = 'spendings' AND "Total"."Id" = r."Key_1"

