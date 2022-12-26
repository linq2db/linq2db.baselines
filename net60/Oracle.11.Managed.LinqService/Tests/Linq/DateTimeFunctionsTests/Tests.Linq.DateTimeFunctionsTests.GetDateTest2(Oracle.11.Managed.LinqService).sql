BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 5

SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT
			Trunc(CURRENT_TIMESTAMP, 'DD') as "Key_1",
			Count(*) as "Count_1"
		FROM
			"Parent" v
				INNER JOIN "Child" s ON v."ParentID" = s."ParentID"
		WHERE
			v."Value1" > 0
		GROUP BY
			Trunc(CURRENT_TIMESTAMP, 'DD')
	) t1
WHERE
	ROWNUM <= :take

