BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID"
FROM
	"Parent" t2
		INNER JOIN (
			SELECT
				ch."ParentID",
				ROW_NUMBER() OVER (PARTITION BY ch."ParentID" ORDER BY ch."ParentID") as "rn"
			FROM
				"Child" ch
		) t1 ON t2."ParentID" = t1."ParentID" AND t1."rn" <= 1
WHERE
	t2."ParentID" = 1

