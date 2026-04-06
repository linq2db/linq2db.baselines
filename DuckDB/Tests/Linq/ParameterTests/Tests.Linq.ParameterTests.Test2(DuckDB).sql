-- DuckDB
DECLARE $id1  -- Int32
SET     $id1 = 1
DECLARE $id2  -- Int32
SET     $id2 = 10000

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($id1 AS INTEGER) OR p.ParentID >= CAST($id1 AS INTEGER) OR
	p.ParentID >= CAST($id2 AS INTEGER)
ORDER BY
	p.ParentID
LIMIT 1

-- DuckDB
DECLARE $id1  -- Int32
SET     $id1 = 2
DECLARE $id2  -- Int32
SET     $id2 = 10000

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($id1 AS INTEGER) OR p.ParentID >= CAST($id1 AS INTEGER) OR
	p.ParentID >= CAST($id2 AS INTEGER)
ORDER BY
	p.ParentID
LIMIT 1

