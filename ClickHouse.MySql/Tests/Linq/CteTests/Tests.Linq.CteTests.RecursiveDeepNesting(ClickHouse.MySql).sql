BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS HierarchyTree

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS HierarchyTree
(
	Id       Int32,
	ParentId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH RECURSIVE CTE_1 AS
(
	SELECT
		t.Id
	FROM
		HierarchyTree t
	WHERE
		t.ParentId IS NULL
),
CTE_2 AS
(
	SELECT
		t1.ParentId,
		t1.Id
	FROM
		HierarchyTree t1
),
hierarchyDown AS
(
	SELECT
		toInt32(0) as Level_1,
		t2.Id
	FROM
		CTE_1 t2
	UNION ALL
	SELECT
		t3.Level_1 + 1 as Level_1,
		t_1.Id as Id
	FROM
		hierarchyDown t3
			INNER JOIN CTE_2 t_1 ON t_1.ParentId = t3.Id AND t_1.ParentId IS NOT NULL
)
SELECT
	t4.Id,
	t4.Level_1
FROM
	hierarchyDown t4
		INNER JOIN HierarchyTree data1 ON data1.Id = t4.Id
		INNER JOIN HierarchyTree data2 ON data2.Id = t4.Id
		INNER JOIN HierarchyTree data3 ON data3.Id = t4.Id
		INNER JOIN HierarchyTree data4 ON data4.Id = t4.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS HierarchyTree

