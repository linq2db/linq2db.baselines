BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

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

