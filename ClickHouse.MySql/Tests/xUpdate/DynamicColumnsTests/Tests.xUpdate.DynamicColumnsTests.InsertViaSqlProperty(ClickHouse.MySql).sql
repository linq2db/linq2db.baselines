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

