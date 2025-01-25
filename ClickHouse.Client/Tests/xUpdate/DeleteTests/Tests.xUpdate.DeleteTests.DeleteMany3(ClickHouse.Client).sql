BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	1001
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

