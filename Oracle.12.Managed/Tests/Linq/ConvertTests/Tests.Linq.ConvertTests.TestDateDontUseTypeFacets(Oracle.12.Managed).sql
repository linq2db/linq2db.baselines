-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	g_2."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			TRUNC(g_1."CreatedOnUtc") as "Date_1"
		FROM
			"DateTimePrecisionTable" g_1
	) g_2
GROUP BY
	g_2."Date_1"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."CreatedOnUtc"
FROM
	"DateTimePrecisionTable" t1

