-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."cond"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				a_Children."ParentID" as "cond"
			FROM
				"Child" a_Children
			WHERE
				p."ParentID" = a_Children."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t1."cond" IS NOT NULL

