BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NotNullParent

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS NotNullParent
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NotNullParent
(
	ID
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NotNullParent
(
	ID
)
VALUES
(
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NotNullChild

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS NotNullChild
(
	ParentID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO NotNullChild
(
	ParentID
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	NotNullParent p

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NotNullChild

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS NotNullParent

