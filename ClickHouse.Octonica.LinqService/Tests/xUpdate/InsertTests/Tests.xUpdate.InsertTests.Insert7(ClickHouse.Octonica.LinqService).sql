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
	ChildID,
	ParentID
)
VALUES
(
	1001,
	1
)

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

