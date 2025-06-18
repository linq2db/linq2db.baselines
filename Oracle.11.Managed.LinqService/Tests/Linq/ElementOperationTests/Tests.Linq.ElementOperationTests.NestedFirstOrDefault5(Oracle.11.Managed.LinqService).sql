BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"GrandChild" p
		LEFT JOIN "Child" a_Child ON p."ParentID" = a_Child."ParentID" AND p."ChildID" = a_Child."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
		LEFT JOIN (
			SELECT
				a_Children."ParentID",
				a_Children."ChildID",
				ROW_NUMBER() OVER (PARTITION BY a_Children."ParentID" ORDER BY a_Children."ChildID") as "rn"
			FROM
				"Child" a_Children
		) t1 ON a_Parent."ParentID" IS NOT NULL AND a_Parent."ParentID" = t1."ParentID" AND t1."rn" <= 1
WHERE
	p."ChildID" > 0

