-- YDB Ydb

SELECT
	left_1.ParentID as Left_1,
	right_1.ParentID as Right_1
FROM
	Parent left_1
		INNER JOIN Parent left2 ON left_1.Value1 = left2.Value1 + 2
		FULL JOIN Parent right_1 ON right_1.Value1 + 2 = left_1.Value1
ORDER BY
	left_1.ParentID

