BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ FULL(p_1.p) CACHE(p_1.p) */
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
	) p_1

