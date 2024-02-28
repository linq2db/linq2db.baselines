BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			ch."ChildID" >= 20 AND ch."ChildID" < 30 AND g_1."ParentID" = ch."ParentID"
	)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

