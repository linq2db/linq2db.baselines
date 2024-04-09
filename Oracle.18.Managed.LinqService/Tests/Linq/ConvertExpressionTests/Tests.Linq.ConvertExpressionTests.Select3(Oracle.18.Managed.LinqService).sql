BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			SUM(a_Children."ChildID")
		FROM
			"Child" a_Children
		WHERE
			t."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 1 AND
			a_Children."ParentID" < 10
	)
FROM
	"Parent" t

