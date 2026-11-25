-- DuckDB
SELECT
	s.ParentID,
	CASE
		WHEN s.Value1 IS NULL THEN 'none'
		ELSE NULL
	END
FROM
	Parent x
		RIGHT JOIN Parent s ON s.Value1 = x.ParentID

