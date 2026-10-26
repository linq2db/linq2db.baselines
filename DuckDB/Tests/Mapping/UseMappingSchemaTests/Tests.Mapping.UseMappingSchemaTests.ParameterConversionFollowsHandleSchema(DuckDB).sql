-- DuckDB
DECLARE $id  -- Int32
SET     $id = 2

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	CAST(p.ParentID AS BIGINT) = $id

