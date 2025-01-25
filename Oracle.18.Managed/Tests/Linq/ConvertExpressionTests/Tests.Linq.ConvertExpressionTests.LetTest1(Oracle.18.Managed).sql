BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			a_Children_1."ParentID"
		FROM
			"Child" a_Children_1
		WHERE
			p."ParentID" = a_Children_1."ParentID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				a_Children."ParentID"
			FROM
				"Child" a_Children
			WHERE
				p."ParentID" = a_Children."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t1."ParentID" IS NOT NULL

