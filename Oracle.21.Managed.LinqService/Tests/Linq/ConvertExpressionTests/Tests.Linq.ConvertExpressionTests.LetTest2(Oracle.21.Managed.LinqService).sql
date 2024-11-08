BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			a_Children."ParentID"
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
		FETCH NEXT 1 ROWS ONLY
	) IS NOT NULL

