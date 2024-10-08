BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN t1.Value1 = 1 THEN true
		ELSE false
	END,
	t1.ParentID,
	t1.Value1,
	t1.Value1
FROM
	Parent t1

