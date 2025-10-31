-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

-- ClickHouse.Driver ClickHouse

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
			c_1.ParentID as ParentID,
			toInt32(Floor(toFloat64(c_1.ChildID) / toFloat64(10))) as Value1
		FROM
			Child c_1
		UNION DISTINCT
		SELECT
			Coalesce(c_2.ParentID, 0) as ParentID,
			Floor(toFloat64(Coalesce(c_2.GrandChildID, 0)) / toFloat64(100)) as Value1
		FROM
			GrandChild c_2
	) t1

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Parent c_1
WHERE
	c_1.ParentID > 1000

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

