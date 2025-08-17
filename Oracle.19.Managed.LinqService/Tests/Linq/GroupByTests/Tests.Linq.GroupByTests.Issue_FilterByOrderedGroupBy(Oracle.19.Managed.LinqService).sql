BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
WHERE
	t."ParentID" IN (
		SELECT
			t1."ParentID"
		FROM
			(
				SELECT
					x."ParentID"
				FROM
					"Child" x
				GROUP BY
					x."ParentID"
				ORDER BY
					MAX(x."ChildID") DESC
				FETCH NEXT 2 ROWS ONLY
			) t1
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

