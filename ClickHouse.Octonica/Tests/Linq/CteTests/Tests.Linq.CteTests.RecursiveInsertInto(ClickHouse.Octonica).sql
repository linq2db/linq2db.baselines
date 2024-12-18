BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS HierarchyTree

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS HierarchyTree
(
	Id       Int32,
	ParentId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(1,NULL),
(2,NULL),
(10,1),
(11,1),
(20,2),
(22,2),
(100,10),
(101,10),
(102,10),
(110,11),
(111,11),
(112,11),
(200,20),
(201,20),
(202,20),
(210,21),
(211,21),
(212,21)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS HierarchyData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS HierarchyData
(
	Id    Int32,
	Level Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO HierarchyData
(
	Id,
	Level
)
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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Level
FROM
	HierarchyData t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS HierarchyData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS HierarchyTree

