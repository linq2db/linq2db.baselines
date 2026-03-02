-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	g_2."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			TRUNC(g_1."CreatedOnUtc") as "Date_1"
		FROM
			"Issue5390Table" g_1
	) g_2
GROUP BY
	g_2."Date_1"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."CreatedOnUtc"
FROM
	"Issue5390Table" t1

