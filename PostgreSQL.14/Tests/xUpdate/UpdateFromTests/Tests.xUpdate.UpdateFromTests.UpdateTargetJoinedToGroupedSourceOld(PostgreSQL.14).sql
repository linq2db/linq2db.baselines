-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
UPDATE
	"GroupedUpdateTotal"
SET
	"Sum" = "GroupedUpdateTotal"."Sum" + t1."SumAggr"
FROM
	(
		SELECT
			SUM(eg."Sum") as "SumAggr",
			eg."TotalId"
		FROM
			"GroupedUpdateEntry" eg
		GROUP BY
			eg."TotalId"
	) t1
WHERE
	"GroupedUpdateTotal"."Label" = 'spendings' AND "GroupedUpdateTotal"."Id" = t1."TotalId"

