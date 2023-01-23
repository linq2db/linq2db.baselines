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
(toInt32(1)),
(toInt32(2))

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
(toInt32(1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_ChildInner.ParentID
FROM
	NotNullParent p
		INNER JOIN NotNullChild a_ChildInner ON p.ID = a_ChildInner.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullChild

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NotNullParent

