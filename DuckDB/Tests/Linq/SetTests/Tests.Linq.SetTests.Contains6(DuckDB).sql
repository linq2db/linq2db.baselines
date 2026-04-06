-- DuckDB
DECLARE $n  -- Int32
SET     $n = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID + CAST($n AS INTEGER) IN (
		SELECT
			c_1.ParentID
		FROM
			Child c_1
	)

