BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= toInt32(1000)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(toInt32(1000),NULL),
(toInt32(1001),NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	(ParentID = toInt32(1000) AND Value1 IS NULL OR ParentID = toInt32(1001) AND Value1 IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= toInt32(1000)

