-- DuckDB
DECLARE $take  -- Int32
SET     $take = 7

SELECT DISTINCT ON (p_1.ParentID % 2)
	p_1.ParentID,
	p_1.Value1
FROM
	(
		SELECT
			p.ParentID,
			p.Value1
		FROM
			Parent p
		ORDER BY
			p.Value1 NULLS FIRST,
			p.ParentID
		LIMIT $take
	) p_1
ORDER BY
	p_1.ParentID % 2,
	p_1.Value1 NULLS FIRST,
	p_1.ParentID

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

