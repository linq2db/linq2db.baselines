BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > toInt32(1000)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	toInt32(1001),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Parent _
WHERE
	_.ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > toInt32(1000)

