BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	CASE
		WHEN p.Value1 = toInt32(1)
			THEN toInt32(10)
		ELSE toInt32(20)
	END = toInt32(20)

