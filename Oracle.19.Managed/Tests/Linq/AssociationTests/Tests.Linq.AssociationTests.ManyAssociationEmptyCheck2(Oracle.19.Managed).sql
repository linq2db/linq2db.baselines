BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
	)

