BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	t1."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			Date_Trunc('day', CURRENT_TIMESTAMP) as "Key_1"
		FROM
			"Parent" g_1
				INNER JOIN "Child" s ON g_1."ParentID" = s."ParentID"
		WHERE
			g_1."Value1" > 0
	) t1
GROUP BY
	t1."Key_1"
LIMIT :take

