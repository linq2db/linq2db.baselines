BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID"
FROM
	"Parent" p
		CROSS APPLY (
			SELECT
				ch."ParentID"
			FROM
				"Child" ch
			WHERE
				p."ParentID" = ch."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	p."ParentID" = 1

