-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			LISTAGG(CAST(a_Children."ChildID" AS VarChar(255)), ', ') WITHIN GROUP (ORDER BY CAST(a_Children."ChildID" AS VarChar(255)))
		FROM
			"Child" a_Children
		WHERE
			s."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" s

