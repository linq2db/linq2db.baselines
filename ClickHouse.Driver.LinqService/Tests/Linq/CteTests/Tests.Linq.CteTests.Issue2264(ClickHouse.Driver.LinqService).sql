BeforeExecute
-- ClickHouse.Driver ClickHouse

WITH RECURSIVE CTE AS
(
	SELECT
		toInt32(0) as Level_1,
		c_1.Id,
		c_1.ParentId,
		c_1.Label,
		c_1.Id as Entity_Id,
		c_1.Label as Entity_Label,
		c_1.ParentId as Entity_ParentId
	FROM
		TestFolder c_1
	WHERE
		c_1.ParentId IS NULL
	UNION ALL
	SELECT
		r.Level_1 + 1 as Level_1,
		t1.Id as Id,
		t1.ParentId as ParentId,
		concat(r.Label, '/', t1.Label) as Label,
		t1.Id as Entity_Id,
		t1.Label as Entity_Label,
		t1.ParentId as Entity_ParentId
	FROM
		TestFolder t1
			INNER JOIN CTE r ON t1.ParentId = r.Id
)
SELECT
	t2.Level_1,
	t2.Id,
	t2.ParentId,
	t2.Label,
	t2.Entity_Id,
	t2.Entity_Label,
	t2.Entity_ParentId
FROM
	CTE t2

