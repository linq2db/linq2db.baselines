BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Max(a_Children."ParentID")
		FROM
			"Child" a_Children
		WHERE
			a_Children."ParentID" < 0 AND p."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" p

