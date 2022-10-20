BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ChildID > toInt32(1000)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	c_1.ParentID,
	toInt32(1001)
FROM
	Child c_1
WHERE
	c_1.ChildID = toInt32(11)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = toInt32(1001)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ChildID > toInt32(1000)

