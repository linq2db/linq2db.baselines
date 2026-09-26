-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."GroupId",
	COUNT(*),
	COUNT(CASE
		WHEN (t."DataValue"::decimal % 2)::decimal = 0 THEN 1
		ELSE NULL
	END),
	COUNT(DISTINCT t."DataValue")
FROM
	"AggregationData" t
WHERE
	t."DataValue" IS NOT NULL
GROUP BY
	t."GroupId"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

