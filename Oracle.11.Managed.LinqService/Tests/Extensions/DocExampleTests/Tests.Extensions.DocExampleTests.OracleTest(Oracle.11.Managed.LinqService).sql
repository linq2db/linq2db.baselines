BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT /*+ FULL(p_2.c_1) PARALLEL(p_2.c_1 DEFAULT) DYNAMIC_SAMPLING(p@Parent 1) INDEX(p@Parent parent_ix) NO_UNNEST(@Parent) */
	p_2."ParentID",
	p_2."Value1"
FROM
	(
		SELECT
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
	) p_2

