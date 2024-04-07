BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ChildID > toInt32(1000)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	toInt32(1),
	toInt32(1001)
)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = toInt32(1001)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ChildID > toInt32(1000)

