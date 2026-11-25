-- PostgreSQL.9.3 PostgreSQL
UPDATE
	"GroupedUpdateTotal"
SET
	"Sum" = "GroupedUpdateTotal"."Sum" + r."SumAggr"
FROM
	(
		SELECT
			eg."TotalId" as "Key_1",
			SUM(eg."Sum") as "SumAggr"
		FROM
			"GroupedUpdateEntry" eg
		GROUP BY
			eg."TotalId"
	) r
WHERE
	"GroupedUpdateTotal"."Label" = 'spendings' AND "GroupedUpdateTotal"."Id" = r."Key_1"

