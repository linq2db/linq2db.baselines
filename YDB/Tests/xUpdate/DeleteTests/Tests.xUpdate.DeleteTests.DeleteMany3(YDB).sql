-- YDB Ydb

DELETE FROM
	GrandChild
WHERE
	GrandChild.ParentID >= 1000

-- YDB Ydb

DELETE FROM
	Child
WHERE
	Child.ParentID >= 1000

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID >= 1000

-- YDB Ydb

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	1001
)

-- YDB Ydb

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

-- YDB Ydb

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

-- YDB Ydb

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

-- YDB Ydb

DELETE FROM
	GrandChild
WHERE
	GrandChild.ParentID >= 1000

-- YDB Ydb

DELETE FROM
	Child
WHERE
	Child.ParentID >= 1000

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID >= 1000

