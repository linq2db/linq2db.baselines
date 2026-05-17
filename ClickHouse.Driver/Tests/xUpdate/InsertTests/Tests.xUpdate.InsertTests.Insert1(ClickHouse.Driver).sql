-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

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

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

