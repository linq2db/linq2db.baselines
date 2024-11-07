BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID"
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
			) as "ParentID"
		FROM
			"Parent" p
	) t1
WHERE
	t1."ParentID" IS NOT NULL

