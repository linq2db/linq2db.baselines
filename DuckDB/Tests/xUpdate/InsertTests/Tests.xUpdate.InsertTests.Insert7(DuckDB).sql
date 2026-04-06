-- DuckDB

DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001
DECLARE $ParentID  -- Int32
SET     $ParentID = 1

INSERT INTO Child
(
	ChildID,
	ParentID
)
VALUES
(
	CAST($id AS INTEGER),
	CAST($ParentID AS INTEGER)
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

