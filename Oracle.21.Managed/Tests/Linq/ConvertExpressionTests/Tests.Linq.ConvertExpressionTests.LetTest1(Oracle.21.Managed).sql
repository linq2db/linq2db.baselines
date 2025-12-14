-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."cond"
FROM
	(
		SELECT
			(
				SELECT
					a_Children."ParentID"
				FROM
					"Child" a_Children
				WHERE
					p."ParentID" = a_Children."ParentID"
				FETCH NEXT 1 ROWS ONLY
			) as "cond"
		FROM
			"Parent" p
	) t1
WHERE
	t1."cond" IS NOT NULL

