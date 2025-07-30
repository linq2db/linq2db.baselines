BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" a_Children
		WHERE
			p."ParentID" = a_Children."Value1"
	)
FROM
	"Parent" p

