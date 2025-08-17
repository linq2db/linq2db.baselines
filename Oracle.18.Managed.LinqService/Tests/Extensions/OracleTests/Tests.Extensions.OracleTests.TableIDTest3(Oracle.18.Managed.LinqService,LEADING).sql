BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ FULL(p_1.p@qn) LEADING(p_1.p@qn c_1) */
	p_2."ParentID",
	p_2."Value1"
FROM
	(
		SELECT /*+ QB_NAME(qn) */
			p_1."ParentID",
			p_1."Value1"
		FROM
			(
				SELECT
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
				WHERE
					p."ParentID" < 0
			) p_1
	) p_2
		CROSS JOIN "Child" c_1

