-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	t1."Key_1",
	t1."aggregate_1",
	t1."window_1"
FROM
	(
		SELECT
			g_1."ParentID" as "Key_1",
			COUNT(*) as "aggregate_1",
			COUNT(*) OVER() as "window_1"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) t1
ORDER BY
	t1."Key_1" DESC
FETCH NEXT :take ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

