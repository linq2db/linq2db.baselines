BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				p."ParentID" = ch."ParentID"
			ORDER BY
				ch."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	p."ParentID" >= 1
ORDER BY
	p."ParentID"

