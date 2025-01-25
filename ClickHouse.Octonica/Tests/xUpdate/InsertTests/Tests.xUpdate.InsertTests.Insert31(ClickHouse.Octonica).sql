BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	c_1.ParentID,
	1001
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

