BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	q.ParentID,
	q.Value1,
	a_Parent.Value1
FROM
	Parent q
		INNER JOIN Child c_1 ON c_1.ParentID = q.ParentID
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	((CASE
		WHEN (q.ParentID IS NOT NULL OR q.Value1 IS NOT NULL)
			THEN q.ParentID
		ELSE NULL
	END > toInt32(0) OR q.Value1 > toInt32(0)) OR a_Parent.Value1 > toInt32(0))

