-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	IndexedParent_1.Item1,
	IndexedParent_1.Value1
FROM
	Parent p,
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY IndexedParent.ParentID) - toInt64(1) as Item1,
			IndexedParent.Value1 as Value1,
			IndexedParent.ParentID as ParentID
		FROM
			Parent IndexedParent
	) IndexedParent_1
WHERE
	IndexedParent_1.Item1 < toInt64(5)
ORDER BY
	IndexedParent_1.ParentID

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

