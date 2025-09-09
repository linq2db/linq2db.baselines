BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	1001
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	GrandChild
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ParentID >= 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

