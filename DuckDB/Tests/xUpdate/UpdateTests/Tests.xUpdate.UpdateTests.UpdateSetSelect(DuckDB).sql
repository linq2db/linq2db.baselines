-- DuckDB

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- DuckDB

UPDATE
	Parent
SET
	ParentID = (
		SELECT
			c_2.ParentID
		FROM
			Child c_2
		WHERE
			c_2.ChildID = 11
	) + 1000
FROM
	Child c_1
WHERE
	Parent.ParentID = 1 AND Parent.ParentID = c_1.ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1

UPDATE
	Parent
SET
	ParentID = CAST($ParentID AS INTEGER)
WHERE
	Parent.ParentID = 1001

