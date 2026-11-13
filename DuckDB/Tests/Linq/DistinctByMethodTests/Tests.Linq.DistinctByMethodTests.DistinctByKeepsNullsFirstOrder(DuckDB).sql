-- DuckDB
SELECT
	p_1.Value1
FROM
	(
		SELECT DISTINCT ON (p.ParentID % 2)
			p.Value1
		FROM
			Parent p
		ORDER BY
			p.ParentID % 2,
			p.Value1 NULLS FIRST
	) p_1
ORDER BY
	p_1.Value1 NULLS FIRST

