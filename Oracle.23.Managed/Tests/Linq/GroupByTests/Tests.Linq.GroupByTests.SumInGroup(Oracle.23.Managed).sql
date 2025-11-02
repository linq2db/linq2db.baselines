-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	g_1."GroupId",
	SUM(g_1."DataValue"),
	SUM(g_1."DataValue"),
	SUM(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT g_1."DataValue"),
	SUM(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN MOD(g_1."DataValue", 2) = 0D THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

