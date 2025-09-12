BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_1."GroupId",
	MAX(g_1."DataValue"),
	MAX(g_1."DataValue"),
	MAX(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT g_1."DataValue"),
	MAX(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

