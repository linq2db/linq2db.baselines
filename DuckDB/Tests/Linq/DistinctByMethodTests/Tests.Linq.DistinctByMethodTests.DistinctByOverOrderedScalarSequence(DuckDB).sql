-- DuckDB
SELECT
	t1.ParentID
FROM
	(
		SELECT DISTINCT ON (p.ParentID % 2)
			p.ParentID
		FROM
			Parent p
		ORDER BY
			p.ParentID % 2,
			p.ParentID DESC
	) t1
ORDER BY
	t1.ParentID DESC

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

