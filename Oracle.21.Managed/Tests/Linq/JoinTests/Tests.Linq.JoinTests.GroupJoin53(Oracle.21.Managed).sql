BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID"
FROM
	"Parent" t2
		CROSS APPLY (
			SELECT
				ch."ParentID"
			FROM
				"Child" ch
			WHERE
				t2."ParentID" = ch."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t2."ParentID" = 1

