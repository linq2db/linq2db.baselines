BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	toInt32(1),
	toInt32(1001)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = toInt32(1001)

