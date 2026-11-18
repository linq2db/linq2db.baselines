-- ClickHouse.MySql ClickHouse
SELECT
	x.Id,
	toInt64(ROW_NUMBER() OVER (ORDER BY CASE
		WHEN x.NullableIntValue IS NULL THEN NULL
		WHEN x.NullableIntValue > 40 THEN true
		ELSE false
	END, x.Id))
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

