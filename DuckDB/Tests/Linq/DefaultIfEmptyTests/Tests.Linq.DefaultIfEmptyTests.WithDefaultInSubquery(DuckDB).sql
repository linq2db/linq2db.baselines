-- DuckDB

SELECT
	Coalesce((
		SELECT
			SUM(CASE
				WHEN d.ParentID IS NOT NULL THEN d.ParentID
				ELSE -100
			END)
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN Child d ON p.ParentID = d.ParentID
	), 0)
FROM
	Parent p

