BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			g_1."ParentID" = ch."ParentID" AND ch."ChildID" < 30
	)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

