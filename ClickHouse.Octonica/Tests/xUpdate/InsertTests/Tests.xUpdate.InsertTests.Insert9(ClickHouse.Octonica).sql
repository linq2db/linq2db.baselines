BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
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
	toInt32(1001)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	p.ParentID,
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID > toInt32(1000)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > toInt32(1000)

