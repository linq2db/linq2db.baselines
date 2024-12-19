BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			LISTAGG(CAST(a_Children."ChildID" AS VarChar(255)), ', ') WITHIN GROUP (ORDER BY ROWNUM)
		FROM
			"Child" a_Children
		WHERE
			s."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" s

