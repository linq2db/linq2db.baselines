-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1."Day") as "Max_1"
		FROM
			"DateOnlyRow" g_1
		GROUP BY
			g_1."Id"
	) t1
WHERE
	t1."Max_1" IN (DATE '2026-06-01')

