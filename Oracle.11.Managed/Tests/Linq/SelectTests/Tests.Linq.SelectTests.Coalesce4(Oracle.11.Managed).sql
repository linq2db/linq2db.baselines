-- Oracle.11.Managed Oracle11

SELECT
	Coalesce(t1."Value1", c_1."ChildID")
FROM
	"Child" c_1
		LEFT JOIN (
			SELECT
				a_Parent."Value1",
				ROW_NUMBER() OVER (PARTITION BY ch."ChildID" ORDER BY ch."ChildID") as "rn",
				ch."ChildID"
			FROM
				"Child" ch
					LEFT JOIN "Parent" a_Parent ON ch."ParentID" = a_Parent."ParentID"
		) t1 ON t1."ChildID" = c_1."ChildID" AND t1."rn" <= 1

