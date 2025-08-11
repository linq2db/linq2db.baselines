BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1,
	1001
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

