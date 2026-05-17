-- DuckDB

DELETE FROM
	Parent p
WHERE
	p.ParentID > 1000

-- DuckDB

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	t1.ParentID + 1000,
	t1.Value1
FROM
	(
		SELECT
			c_1.ParentID,
			CAST(Floor(CAST(c_1.ChildID AS DOUBLE) / 10) AS INTEGER) as Value1
		FROM
			Child c_1
		UNION
		SELECT
			Coalesce(c_2.ParentID, 0) as ParentID,
			CAST(Floor(CAST(Coalesce(c_2.GrandChildID, 0) AS DOUBLE) / 100) AS INTEGER) as Value1
		FROM
			GrandChild c_2
	) t1

-- DuckDB

SELECT
	COUNT(*)
FROM
	Parent c_1
WHERE
	c_1.ParentID > 1000

-- DuckDB

DELETE FROM
	Parent p
WHERE
	p.ParentID > 1000

