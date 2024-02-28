BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" a_Children
		WHERE
			(p."ParentID" = a_Children."Value1")
	)
FROM
	"Parent" p

