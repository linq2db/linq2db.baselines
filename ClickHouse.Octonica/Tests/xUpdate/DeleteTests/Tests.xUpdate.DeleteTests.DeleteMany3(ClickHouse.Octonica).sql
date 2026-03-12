-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	1001
)

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

