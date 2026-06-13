-- YDB Ydb

SELECT
	t2.ParentID as Left_1,
	t1.ParentID as Right_1
FROM
	Parent t2
		FULL JOIN (
			SELECT
				right_1.Value1 as Value1,
				right_1.ParentID as ParentID
			FROM
				Parent right_1
					INNER JOIN Parent right2 ON right_1.Value1 = right2.Value1 + 2
		) t1 ON t1.Value1 + 2 = t2.Value1
ORDER BY
	t2.ParentID

