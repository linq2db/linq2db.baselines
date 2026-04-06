-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1,
	CAST($id AS INTEGER)
)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = CAST($id AS INTEGER)

-- DuckDB
DECLARE $ChildID  -- Int32
SET     $ChildID = 5000
DECLARE $id  -- Int32
SET     $id = 1001

UPDATE
	Child
SET
	ChildID = CAST($ChildID AS INTEGER)
FROM
	Child c_1
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	c_1.ChildID = CAST($id AS INTEGER) AND
	a_Parent.Value1 = 1 AND
	Child.ParentID = c_1.ParentID AND
	Child.ChildID = c_1.ChildID

-- DuckDB

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 5000

