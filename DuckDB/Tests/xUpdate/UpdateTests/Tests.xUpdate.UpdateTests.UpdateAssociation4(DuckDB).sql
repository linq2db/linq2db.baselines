-- DuckDB

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	20000,
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
DECLARE $Value1  -- Int32
SET     $Value1 = 5

UPDATE
	Parent
SET
	Value1 = CAST($Value1 AS INTEGER)
FROM
	Child child_1
WHERE
	child_1.ChildID = 10000 AND child_1.ParentID = Parent.ParentID

