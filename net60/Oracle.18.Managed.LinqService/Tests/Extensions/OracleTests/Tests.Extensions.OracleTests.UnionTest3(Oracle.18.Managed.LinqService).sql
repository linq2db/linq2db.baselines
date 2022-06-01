BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ FULL(p_2.p) FULL(p_2.p_1) */
	p_2."ParentID"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Child" c_1
				INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"
		UNION
		SELECT
			p_1."ParentID",
			p_1."Value1"
		FROM
			"Child" c_2
				INNER JOIN "Parent" p_1 ON c_2."ParentID" = p_1."ParentID"
	) p_2
WHERE
	p_2."ParentID" > 0

