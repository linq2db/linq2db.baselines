BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	g_2."c1" as "Key_1",
	Count(*) as "Count_1"
FROM
	(
		SELECT
			Trunc(CURRENT_TIMESTAMP, 'DD') as "c1"
		FROM
			"Parent" g_1
				INNER JOIN "Child" s ON g_1."ParentID" = s."ParentID"
		WHERE
			g_1."Value1" > 0
	) g_2
GROUP BY
	g_2."c1"
FETCH NEXT :take ROWS ONLY

