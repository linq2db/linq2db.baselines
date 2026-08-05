-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 5

SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT
			g_2."Key_1",
			COUNT(*) as "Count_1"
		FROM
			(
				SELECT
					TRUNC(CURRENT_TIMESTAMP) as "Key_1"
				FROM
					"Parent" g_1
						INNER JOIN "Child" s ON g_1."ParentID" = s."ParentID"
				WHERE
					g_1."Value1" > 0
			) g_2
		GROUP BY
			g_2."Key_1"
	) t1
WHERE
	ROWNUM <= :take

