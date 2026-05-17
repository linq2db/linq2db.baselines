-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ FULL(p_3.p) FULL(p_3.p_2) */
	p_3."ParentID"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Child" p_1
				INNER JOIN "Parent" p ON p_1."ParentID" = p."ParentID"
		UNION
		SELECT
			p_2."ParentID",
			p_2."Value1"
		FROM
			"Child" c_1
				INNER JOIN "Parent" p_2 ON c_1."ParentID" = p_2."ParentID"
	) p_3
WHERE
	p_3."ParentID" > 0

