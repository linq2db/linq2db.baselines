BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	c_1.ParentID,
	1
FROM
	Child c_1
WHERE
	c_1.ChildID = 111

