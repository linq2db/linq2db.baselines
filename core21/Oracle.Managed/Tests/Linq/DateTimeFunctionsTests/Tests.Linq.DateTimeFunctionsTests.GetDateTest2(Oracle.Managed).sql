BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	t1."c1" as "Key_1",
	Count(*) as "Count_1"
FROM
	(
		SELECT
			Trunc(CURRENT_TIMESTAMP, 'DD') as "c1"
		FROM
			"Parent" v
				INNER JOIN "Child" s ON v."ParentID" = s."ParentID"
		WHERE
			v."Value1" > 0
	) t1
GROUP BY
	t1."c1"
FETCH NEXT :take ROWS ONLY

