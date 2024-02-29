BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ QB_NAME(Main) */
	p."ParentID",
	p."Value1",
	c_1."Count_1"
FROM
	(
		SELECT /*+ QB_NAME(Inline) */
			t1."ParentID",
			Count(*) as "Count_1"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) c_1,
	"Parent" p
WHERE
	p."ParentID" = c_1."ParentID"

