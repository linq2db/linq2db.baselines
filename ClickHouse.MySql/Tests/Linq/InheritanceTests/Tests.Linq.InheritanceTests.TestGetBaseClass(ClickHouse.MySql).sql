BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN x.Value1 = 2 THEN true
		ELSE false
	END,
	x.ParentID,
	x.Value1,
	CASE
		WHEN x.Value1 = 1 THEN true
		ELSE false
	END,
	x.Value1
FROM
	Parent x
WHERE
	x.Value1 = 1 OR x.Value1 = 2

