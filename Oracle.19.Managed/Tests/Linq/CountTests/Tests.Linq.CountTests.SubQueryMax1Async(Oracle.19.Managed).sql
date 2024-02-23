BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	Max((
		SELECT
			Count(*)
		FROM
			"Child" t2
				LEFT JOIN "Parent" a_Parent ON t2."ParentID" = a_Parent."ParentID"
		WHERE
			a_Parent."ParentID" = t1."ParentID"
	))
FROM
	"Parent" t1

