BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ FULL(p_2.p_1.p) FULL(p_2.p_1.c_1) */
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

