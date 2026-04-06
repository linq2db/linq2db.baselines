-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

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
	c_1.ChildID = 111

