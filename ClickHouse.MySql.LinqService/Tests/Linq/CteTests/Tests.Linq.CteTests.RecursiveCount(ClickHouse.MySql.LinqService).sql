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

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	2,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	10,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	11,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	20,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	22,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	100,
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	101,
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	102,
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	110,
	11
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	111,
	11
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	112,
	11
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	200,
	20
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	201,
	20
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	202,
	20
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	210,
	21
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	211,
	21
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO HierarchyTree
(
	Id,
	ParentId
)
VALUES
(
	212,
	21
)

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
		t2.Id
	FROM
		CTE_1 t2
	UNION ALL
	SELECT
		t_1.Id as Id
	FROM
		hierarchyDown t3
			INNER JOIN CTE_2 t_1 ON t_1.ParentId = t3.Id AND t_1.ParentId IS NOT NULL
)
SELECT
	COUNT(*)
FROM
	hierarchyDown t4

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS HierarchyTree

