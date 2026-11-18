-- DuckDB
SELECT
	p.ParentID,
	CASE
		WHEN p.Value1 BETWEEN 1 AND 3 THEN True
		ELSE False
	END,
	CASE
		WHEN p.Value1 NOT BETWEEN 1 AND 3 THEN True
		ELSE False
	END
FROM
	Parent p

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

