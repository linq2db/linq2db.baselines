BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID = toInt32(1001)

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
	toInt32(1001)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001)

