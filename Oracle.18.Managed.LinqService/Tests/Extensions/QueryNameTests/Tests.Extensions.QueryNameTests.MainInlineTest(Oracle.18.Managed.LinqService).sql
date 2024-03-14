BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ QB_NAME(Main) */
	p."ParentID",
	p."Value1",
	t1."Count_1"
FROM
	(
		SELECT /*+ QB_NAME(Inline) */
			g_1."ParentID",
			Count(*) as "Count_1"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) t1,
	"Parent" p
WHERE
	p."ParentID" = t1."ParentID"

