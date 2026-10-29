-- DuckDB
DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

-- DuckDB
DECLARE $ParentID INTEGER -- Int32
SET     $ParentID = 1
DECLARE $ChildID INTEGER -- Int32
SET     $ChildID = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	$ParentID,
	$ChildID
)

-- DuckDB
SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

-- DuckDB
DELETE FROM
	Child c_1
WHERE
	c_1.ChildID > 1000

