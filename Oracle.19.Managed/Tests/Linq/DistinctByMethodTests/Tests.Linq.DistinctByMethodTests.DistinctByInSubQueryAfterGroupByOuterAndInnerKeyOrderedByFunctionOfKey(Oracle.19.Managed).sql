-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	Coalesce((
		SELECT
			SUM(t1."Entity")
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY MOD(e."ChildID", 2) ORDER BY -e."ChildID") as "RowNumber",
					e."ChildID" as "Entity"
				FROM
					"Child" e
				WHERE
					e."ParentID" = p."ParentID"
				GROUP BY
					p."ParentID",
					e."ChildID"
			) t1
		WHERE
			t1."RowNumber" = 1
	), 0)
FROM
	"Parent" p

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

