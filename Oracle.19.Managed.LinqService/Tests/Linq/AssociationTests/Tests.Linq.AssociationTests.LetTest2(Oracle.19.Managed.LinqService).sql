BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			t."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" t

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			t."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" t

