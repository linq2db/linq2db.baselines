-- DuckDB
SELECT
	t4.ParentID,
	t4.Value1
FROM
	(
		SELECT DISTINCT ON (t3.c1)
			t3.ParentID,
			t3.Value1
		FROM
			(
				SELECT DISTINCT ON (t2.ParentID % 3)
					t2.ParentID % 2 as c1,
					t2.ParentID,
					t2.Value1
				FROM
					(
						SELECT
							t1.ParentID,
							t1.Value1
						FROM
							Parent t1
					) t2
				ORDER BY
					t2.ParentID % 3,
					t2.ParentID DESC
			) t3
		ORDER BY
			t3.c1,
			t3.ParentID % 3,
			t3.ParentID DESC
	) t4
ORDER BY
	t4.ParentID % 3,
	t4.ParentID DESC

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

