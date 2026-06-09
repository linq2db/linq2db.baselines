-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	IndexedParent_1.Item1 as Item1,
	IndexedParent_1.Value1 as Value1
FROM
	Parent p
		CROSS JOIN (
			SELECT
				ROW_NUMBER() OVER (ORDER BY IndexedParent.ParentID) - 1l as Item1,
				IndexedParent.Value1 as Value1,
				IndexedParent.ParentID as ParentID
			FROM
				Parent IndexedParent
		) IndexedParent_1
WHERE
	IndexedParent_1.Item1 < 5l
ORDER BY
	IndexedParent_1.ParentID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

