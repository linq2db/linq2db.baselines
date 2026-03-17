-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_1."GroupId",
	MIN(g_1."DataValue"),
	MIN(g_1."DataValue"),
	MIN(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	MIN(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	MIN(DISTINCT g_1."DataValue"),
	MIN(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	MIN(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

