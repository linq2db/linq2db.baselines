BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" a_GrandChildren
		WHERE
			a_Parent."ParentID" IS NOT NULL AND
			a_Parent."ParentID" = a_GrandChildren."ParentID" AND
			a_GrandChildren."ParentID" + 1 < p1."ParentID" + 2 AND
			a_GrandChildren."ParentID" + 1 < p1."ParentID" + 2
	)
FROM
	"Child" p1
		LEFT JOIN "Parent" a_Parent ON p1."ParentID" = a_Parent."ParentID"
WHERE
	p1."ParentID" > -1 AND p1."ParentID" > -2

