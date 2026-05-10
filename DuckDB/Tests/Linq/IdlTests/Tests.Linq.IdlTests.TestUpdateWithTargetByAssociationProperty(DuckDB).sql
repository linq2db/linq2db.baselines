-- DuckDB

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	20000
)

-- DuckDB

INSERT INTO Child
(
	ChildID,
	ParentID
)
VALUES
(
	10000,
	20000
)

-- DuckDB

UPDATE
	Parent
SET
	Value1 = 5
FROM
	Child child_1
WHERE
	child_1.ChildID = 10000 AND child_1.ParentID = Parent.ParentID

-- DuckDB

DELETE FROM
	Child x
WHERE
	x.ChildID = 10000

-- DuckDB

DELETE FROM
	Parent x
WHERE
	x.ParentID = 20000

