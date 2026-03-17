-- ClickHouse.Driver ClickHouse

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	1001
)

-- ClickHouse.Driver ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1001,
	1
)

-- ClickHouse.Driver ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1001,
	2
)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

