BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID"
FROM
	"Parent" p
		INNER JOIN (
			SELECT
				ch."ParentID",
				ROW_NUMBER() OVER (PARTITION BY ch."ParentID" ORDER BY ch."ParentID") as "rn"
			FROM
				"Child" ch
		) t1 ON p."ParentID" = t1."ParentID" AND t1."rn" <= 1
WHERE
	p."ParentID" = 1

