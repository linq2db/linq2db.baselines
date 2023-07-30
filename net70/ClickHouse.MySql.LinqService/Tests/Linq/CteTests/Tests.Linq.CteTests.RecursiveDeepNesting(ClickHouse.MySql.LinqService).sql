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

DROP TABLE IF EXISTS HierarchyTree

