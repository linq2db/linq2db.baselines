-- ClickHouse.MySql ClickHouse
SELECT
	p.ParentID,
	CASE
		WHEN p.Value1 BETWEEN 1 AND 3 THEN true
		ELSE false
	END,
	CASE
		WHEN p.Value1 NOT BETWEEN 1 AND 3 THEN true
		ELSE false
	END
FROM
	Parent p

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

