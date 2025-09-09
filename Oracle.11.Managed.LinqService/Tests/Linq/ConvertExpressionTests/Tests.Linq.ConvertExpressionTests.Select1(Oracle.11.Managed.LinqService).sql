BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	(
		SELECT
			SUM(a_Children."ChildID")
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 1
	)
FROM
	"Parent" p

