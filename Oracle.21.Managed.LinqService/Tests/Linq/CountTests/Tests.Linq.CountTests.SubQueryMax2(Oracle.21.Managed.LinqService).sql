BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Max((
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			t1."ParentID" = a_Children."ParentID"
	))
FROM
	"Parent" t1

