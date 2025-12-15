-- ClickHouse.MySql ClickHouse

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	1001
)

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	1,
	1
)

-- ClickHouse.MySql ClickHouse

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	1,
	2
)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

