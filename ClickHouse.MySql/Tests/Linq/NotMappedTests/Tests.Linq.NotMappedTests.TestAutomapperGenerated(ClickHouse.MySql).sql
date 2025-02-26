BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Value,
	a_Association1.Id,
	a_Association1.Value,
	a_Association1.ParentId,
	a_Association2.Id,
	a_Association2.Value,
	a_Association2.ParentId
FROM
	SuperClass t
		LEFT JOIN Subclass1 a_Association1 ON t.Id = a_Association1.ParentId
		LEFT JOIN Subclass2 a_Association2 ON a_Association1.Id = a_Association2.ParentId

