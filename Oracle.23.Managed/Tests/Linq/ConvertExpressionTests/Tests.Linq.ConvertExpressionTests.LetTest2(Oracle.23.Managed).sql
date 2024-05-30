BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
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

