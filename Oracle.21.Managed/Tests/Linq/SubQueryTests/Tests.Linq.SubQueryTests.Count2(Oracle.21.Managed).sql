-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			(
				SELECT
					SUM(a_Children."ParentID") as "Value1"
				FROM
					"Child" a_Children
				WHERE
					p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 0
			) / 2 as "Value1",
			p."ParentID"
		FROM
			"Parent" p
	) p_1
WHERE
	p_1."Value1" > 1

