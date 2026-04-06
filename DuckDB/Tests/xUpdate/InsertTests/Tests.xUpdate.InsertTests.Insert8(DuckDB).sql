-- DuckDB

DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1
DECLARE $id  -- Int32
SET     $id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	CAST($ParentID AS INTEGER),
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

DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

