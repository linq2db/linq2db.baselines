BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > toInt32(1000)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Child
(
	ChildID,
	ParentID
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
	Child c_1
WHERE
	c_1.ChildID = toInt32(1001)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > toInt32(1000)

