BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 5

SELECT 
	t2.Key_1, 
	t2.Count_1
FROM
	( 
		SELECT 
			t1.c1 as Key_1, 
			Count(*) as Count_1
		FROM
			( 
				SELECT 
					Trunc(CURRENT_TIMESTAMP, 'DD') as c1
				FROM
					Parent v
						INNER JOIN Child s ON v.ParentID = s.ParentID
				WHERE
					v.Value1 > 0
			) t1
		GROUP BY
			t1.c1
	) t2
WHERE
	ROWNUM <= :take

