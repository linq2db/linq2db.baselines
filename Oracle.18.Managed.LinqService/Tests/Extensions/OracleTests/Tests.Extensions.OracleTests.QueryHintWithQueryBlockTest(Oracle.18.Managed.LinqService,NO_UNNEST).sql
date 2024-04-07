BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ NO_UNNEST(@Parent) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN (
			SELECT /*+ QB_NAME(Parent) */
				t1."ParentID",
				t1."Value1"
			FROM
				"Parent" t1
		) p ON c_1."ParentID" = p."ParentID"

