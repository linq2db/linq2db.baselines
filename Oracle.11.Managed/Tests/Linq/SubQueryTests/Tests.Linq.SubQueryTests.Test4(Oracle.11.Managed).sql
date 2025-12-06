-- Oracle.11.Managed Oracle11

SELECT
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				ch."ChildID",
				ROW_NUMBER() OVER (PARTITION BY ch."ParentID" ORDER BY ch."ParentID") as "rn",
				ch."ParentID"
			FROM
				"Child" ch
			WHERE
				ch."ChildID" = ch."ParentID" * 10 + 1
		) t1 ON t1."ParentID" = p."ParentID" AND t1."rn" <= 1
WHERE
	p."ParentID" <> 5

