-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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

