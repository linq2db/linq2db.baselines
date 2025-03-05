BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
WHERE
	t."ParentID" IN (
		SELECT
			t2."ParentID"
		FROM
			(
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
					) t1
				WHERE
					ROWNUM <= 2
			) t2
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

