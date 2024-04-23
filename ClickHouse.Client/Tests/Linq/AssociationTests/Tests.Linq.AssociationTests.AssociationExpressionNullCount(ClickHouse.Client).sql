﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullParent

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS NotNullParent
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO NotNullParent
(
	ID
)
VALUES
(1),
(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullChild

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS NotNullChild
(
	ParentID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO NotNullChild
(
	ParentID
)
VALUES
(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	NotNullParent p
		LEFT JOIN NotNullChild a_ChildOuter ON p.ID = a_ChildOuter.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullChild

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullParent

