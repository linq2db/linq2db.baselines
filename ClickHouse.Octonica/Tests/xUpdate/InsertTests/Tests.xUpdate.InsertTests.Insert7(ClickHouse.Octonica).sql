-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

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

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

