BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

