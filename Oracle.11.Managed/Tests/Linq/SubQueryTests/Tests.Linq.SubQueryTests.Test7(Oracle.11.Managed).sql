-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"GrandChild" g_1
		WHERE
			g_1."ChildID" = c_1."ChildID"
	)
FROM
	"Child" c_1

