BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS GrandParent_3230

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS GrandParent_3230
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO GrandParent_3230
(
	ID
)
VALUES
(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Parent_3230

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Parent_3230
(
	ID            Int32,
	GrandParentID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Parent_3230
(
	ID,
	GrandParentID
)
VALUES
(1,1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Child_3230

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Child_3230
(
	ID       Int32,
	ParentID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Child_3230
(
	ID,
	ParentID
)
VALUES
(1,1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.ParentID,
	a_Parent.ID,
	a_Parent.GrandParentID,
	a_GrandParent.ID
FROM
	Child_3230 t1
		LEFT JOIN Parent_3230 a_Parent ON t1.ParentID = a_Parent.ID
		LEFT JOIN GrandParent_3230 a_GrandParent ON a_Parent.GrandParentID = a_GrandParent.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.ParentID,
	a_Parent.ID,
	a_Parent.GrandParentID,
	a_GrandParent.ID
FROM
	Child_3230 t1
		LEFT JOIN Parent_3230 a_Parent ON t1.ParentID = a_Parent.ID
		LEFT JOIN GrandParent_3230 a_GrandParent ON a_Parent.GrandParentID = a_GrandParent.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Child_3230

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Parent_3230

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS GrandParent_3230

