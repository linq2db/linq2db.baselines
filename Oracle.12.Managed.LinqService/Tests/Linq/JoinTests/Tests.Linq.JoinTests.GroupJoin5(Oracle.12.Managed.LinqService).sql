BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" t2
		OUTER APPLY (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				t2."ParentID" = ch."ParentID"
			ORDER BY
				ch."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t2."ParentID" >= 1
ORDER BY
	t2."ParentID"

