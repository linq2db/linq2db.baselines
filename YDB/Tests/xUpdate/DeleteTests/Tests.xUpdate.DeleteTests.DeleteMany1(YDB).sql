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

