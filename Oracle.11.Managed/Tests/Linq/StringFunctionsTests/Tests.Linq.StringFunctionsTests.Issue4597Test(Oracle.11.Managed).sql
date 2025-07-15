BeforeExecute
-- Oracle.11.Managed Oracle11

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

