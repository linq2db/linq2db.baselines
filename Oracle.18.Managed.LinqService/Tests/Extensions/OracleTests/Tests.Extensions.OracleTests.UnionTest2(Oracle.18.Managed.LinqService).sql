BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ FULL(p@qb_1) FULL(p_2@qb_2) */
	p_3."ParentID"
FROM
	(
		SELECT /*+ QB_NAME(qb_1) */
			p."ParentID",
			p."Value1"
		FROM
			"Child" p_1
				INNER JOIN "Parent" p ON p_1."ParentID" = p."ParentID"
		UNION
		SELECT /*+ QB_NAME(qb_2) */
			p_2."ParentID",
			p_2."Value1"
		FROM
			"Child" c_1
				INNER JOIN "Parent" p_2 ON c_1."ParentID" = p_2."ParentID"
	) p_3
WHERE
	p_3."ParentID" > 0

