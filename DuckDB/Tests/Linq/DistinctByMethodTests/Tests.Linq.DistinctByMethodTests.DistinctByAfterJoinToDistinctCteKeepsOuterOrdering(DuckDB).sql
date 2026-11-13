-- DuckDB
WITH CTE_1 (ParentID)
AS
(
	SELECT DISTINCT
		c_1.ParentID
	FROM
		Child c_1
)
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT DISTINCT ON (p.Value1)
			p.ParentID,
			p.Value1
		FROM
			Parent p
				INNER JOIN CTE_1 c_2 ON p.ParentID = c_2.ParentID
		ORDER BY
			p.Value1,
			p.ParentID DESC
	) t1
ORDER BY
	t1.ParentID DESC

