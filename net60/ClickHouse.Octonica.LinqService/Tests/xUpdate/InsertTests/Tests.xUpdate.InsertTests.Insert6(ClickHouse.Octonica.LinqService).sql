BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	Value1 = toInt32(11)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	c_1.ParentID + toInt32(1000),
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID = toInt32(11)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.Value1 = toInt32(11)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	Value1 = toInt32(11)

