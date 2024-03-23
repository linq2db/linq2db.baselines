BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
	) AND
	p."ParentID" > 100

