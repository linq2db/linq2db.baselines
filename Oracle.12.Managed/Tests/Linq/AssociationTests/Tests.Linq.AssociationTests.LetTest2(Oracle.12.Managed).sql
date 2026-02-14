-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" a_Children
		WHERE
			t."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" t

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" a_Children
		WHERE
			t."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" t

