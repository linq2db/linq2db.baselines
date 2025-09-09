BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ FULL(p_2.p_1.p) LEADING(p_2.p_1.p p_2.p_1.c_1) */
	p_2."ParentID",
	p_2."Value1"
FROM
	(
		SELECT
			p_1."ParentID",
			p_1."Value1"
		FROM
			(
				SELECT
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
						CROSS JOIN "Child" c_1
			) p_1
	) p_2

