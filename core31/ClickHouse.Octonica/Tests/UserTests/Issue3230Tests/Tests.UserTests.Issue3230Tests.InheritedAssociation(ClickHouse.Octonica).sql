﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GrandParent_3230

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS GrandParent_3230
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO GrandParent_3230
(
	ID
)
VALUES
(toInt32(1))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Parent_3230

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Parent_3230
(
	ID            Int32,
	GrandParentID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent_3230
(
	ID,
	GrandParentID
)
VALUES
(toInt32(1),toInt32(1))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Child_3230

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Child_3230
(
	ID       Int32,
	ParentID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Child_3230
(
	ID,
	ParentID
)
VALUES
(toInt32(1),toInt32(1))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ID,
	a_Parent.ID,
	a_Parent.GrandParentID,
	a_GrandParent.ID
FROM
	Child_3230 t1
		LEFT JOIN Parent_3230 a_Parent ON t1.ParentID = a_Parent.ID
		LEFT JOIN GrandParent_3230 a_GrandParent ON a_Parent.GrandParentID = a_GrandParent.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Child_3230

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Parent_3230

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS GrandParent_3230

