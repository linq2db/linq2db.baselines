BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > toInt32(1000)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	t1.ParentID + toInt32(1000),
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
			Coalesce(c_2.ParentID, toInt32(0)) as ParentID,
			Floor(toFloat64(Coalesce(c_2.GrandChildID, toInt32(0))) / toFloat64(100)) as Value1
		FROM
			GrandChild c_2
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Parent c_1
WHERE
	c_1.ParentID > toInt32(1000)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > toInt32(1000)

