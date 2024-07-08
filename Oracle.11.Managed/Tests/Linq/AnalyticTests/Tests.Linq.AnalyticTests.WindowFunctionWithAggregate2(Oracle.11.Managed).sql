BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 100

SELECT
	t2."key_1",
	t2.COUNT_1,
	t2."window_1"
FROM
	(
		SELECT
			t1."key_1",
			t1.COUNT_1,
			t1."window_1"
		FROM
			(
				SELECT
					g_1."ParentID" as "key_1",
					COUNT(*) as COUNT_1,
					COUNT(*) OVER() as "window_1"
				FROM
					"Child" g_1
				GROUP BY
					g_1."ParentID"
			) t1
		ORDER BY
			t1."key_1" DESC
	) t2
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

