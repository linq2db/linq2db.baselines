-- DuckDB

DELETE FROM
	Child c_1
WHERE
	c_1.ParentID > 1000

-- DuckDB

DELETE FROM
	Parent p
WHERE
	p.ParentID > 1000

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001
DECLARE $Value1  -- Int32
SET     $Value1 = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	CAST($ParentID AS INTEGER),
	CAST($Value1 AS INTEGER)
)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	p.ParentID,
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = CAST($id AS INTEGER)

-- DuckDB

DELETE FROM
	Child c_1
WHERE
	c_1.ParentID > 1000

-- DuckDB

DELETE FROM
	Parent p
WHERE
	p.ParentID > 1000

