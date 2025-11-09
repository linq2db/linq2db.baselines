-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."GroupId",
	COUNT(*),
	COUNT(*) FILTER (WHERE (t."DataValue"::decimal % 2)::decimal = 0),
	COUNT(*),
	COUNT(DISTINCT t."DataValue"),
	COUNT(DISTINCT t."DataValue") FILTER (WHERE (t."DataValue"::decimal % 2)::decimal = 0),
	COUNT(DISTINCT t."DataValue") FILTER (WHERE (t."DataValue"::decimal % 2)::decimal = 0),
	COUNT(DISTINCT t."DataValue") FILTER (WHERE (t."DataValue"::decimal % 2)::decimal = 0),
	COUNT(*) FILTER (WHERE (t."DataValue"::decimal % 2)::decimal = 0),
	COUNT(DISTINCT t."DataValue") FILTER (WHERE (t."DataValue"::decimal % 2)::decimal = 0),
	COUNT(DISTINCT t."DataValue")
FROM
	"AggregationData" t
WHERE
	t."DataValue" IS NOT NULL
GROUP BY
	t."GroupId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

