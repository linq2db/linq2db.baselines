BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	pp."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			pp."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" pp

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	pp."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			pp."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" pp

