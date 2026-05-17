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
	$id
FROM
	Child c_1
WHERE
	c_1.ChildID = 11
RETURNING
	Child.ChildID + Child.ParentID + 200

-- DuckDB
DECLARE $param  -- Int32
SET     $param = 200

SELECT
	c_1.ChildID + c_1.ParentID + $param
FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

-- DuckDB

DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

