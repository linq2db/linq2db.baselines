-- DuckDB

DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	c_1.ParentID,
	CAST($id AS INTEGER)
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

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

DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

