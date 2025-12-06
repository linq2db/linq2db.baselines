-- Oracle.11.Managed Oracle11

SELECT /*+ NO_UNNEST(@Parent) */
	p_1."ParentID",
	p_1."Value1"
FROM
	"Child" c_1
		INNER JOIN (
			SELECT /*+ QB_NAME(Parent) */
				p."ParentID",
				p."Value1"
			FROM
				"Parent" p
		) p_1 ON c_1."ParentID" = p_1."ParentID"

