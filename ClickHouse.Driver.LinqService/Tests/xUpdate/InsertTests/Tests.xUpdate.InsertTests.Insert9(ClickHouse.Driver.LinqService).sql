BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID > 1000

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	1001
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	p.ParentID,
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID = 1001

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = 1001

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID > 1000

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

