BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > toInt32(1000)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > toInt32(1000)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	toInt32(1002),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent _
WHERE
	_.ParentID > toInt32(1000)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID IN (toInt32(1001), toInt32(1002))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent _
WHERE
	_.ParentID > toInt32(1000)

