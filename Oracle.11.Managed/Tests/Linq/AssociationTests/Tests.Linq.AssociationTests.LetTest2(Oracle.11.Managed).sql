BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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

