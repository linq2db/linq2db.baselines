BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Parent
(
	ParentID
)
SELECT DISTINCT
	c_1.ChildID
FROM
	Child c_1
		INNER JOIN GrandChild id ON c_1.ParentID = id.ParentID
WHERE
	id.ChildID IS NULL

