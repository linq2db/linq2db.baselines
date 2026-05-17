-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

