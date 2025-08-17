BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

