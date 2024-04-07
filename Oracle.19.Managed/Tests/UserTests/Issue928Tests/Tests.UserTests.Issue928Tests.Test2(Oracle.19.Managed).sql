BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p1."ParentID",
	p1."Value1",
	t1."ParentID",
	t1."Sum_1"
FROM
	"Parent" p1
		CROSS APPLY (
			SELECT
				p."ParentID",
				Sum(p."ParentID") as "Sum_1"
			FROM
				"Parent" p
			WHERE
				p."ParentID" = p1."ParentID" AND p."ParentID" IN (
					SELECT
						ch."ParentID"
					FROM
						"Child" ch
				)
			GROUP BY
				p."ParentID"
		) t1

