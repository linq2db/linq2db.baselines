BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ FULL(p_1.c_1) PARALLEL(p_1.c_1 DEFAULT) DYNAMIC_SAMPLING(t1@Parent 1) INDEX(t1@Parent parent_ix) NO_UNNEST(@Parent) */
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
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
	) p_1

