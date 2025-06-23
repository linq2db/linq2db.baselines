BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.COUNT_1
FROM
	"Child" p1
		LEFT JOIN "Parent" a_Parent ON p1."ParentID" = a_Parent."ParentID"
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				"GrandChild" a_GrandChildren
			WHERE
				a_Parent."ParentID" IS NOT NULL AND a_Parent."ParentID" = a_GrandChildren."ParentID" AND
				a_GrandChildren."ParentID" + 1 < p1."ParentID" + 2
		) t1
WHERE
	p1."ParentID" > -1 AND p1."ParentID" > -2

