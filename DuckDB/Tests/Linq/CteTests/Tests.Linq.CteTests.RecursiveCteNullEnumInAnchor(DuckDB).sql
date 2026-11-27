-- DuckDB
WITH RECURSIVE cte (Id, Enum1)
AS
(
	SELECT
		p.Id,
		CAST(NULL AS VARCHAR)
	FROM
		CteNullInAnchorTable p
	UNION ALL
	SELECT
		t1.Id,
		CAST('THIS_IS_ONE' AS VARCHAR)
	FROM
		cte t1
			INNER JOIN CteNullInAnchorTable r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Enum1
FROM
	cte t2

