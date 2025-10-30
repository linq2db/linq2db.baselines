BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."GroupId",
	COUNT(*),
	COUNT(CASE
		WHEN MOD(t."DataValue", 2) = 0D THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT t."DataValue"),
	COUNT(DISTINCT CASE
		WHEN MOD(t."DataValue", 2) = 0D THEN t."DataValue"
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN MOD(t."DataValue", 2) = 0D THEN t."DataValue"
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN MOD(t."DataValue", 2) = 0D THEN t."DataValue"
		ELSE NULL
	END),
	COUNT(CASE
		WHEN MOD(t."DataValue", 2) = 0D THEN 1
		ELSE NULL
	END),
	COUNT(DISTINCT CASE
		WHEN MOD(t."DataValue", 2) = 0D THEN t."DataValue"
		ELSE NULL
	END),
	COUNT(DISTINCT t."DataValue")
FROM
	"AggregationData" t
WHERE
	t."DataValue" IS NOT NULL
GROUP BY
	t."GroupId"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

