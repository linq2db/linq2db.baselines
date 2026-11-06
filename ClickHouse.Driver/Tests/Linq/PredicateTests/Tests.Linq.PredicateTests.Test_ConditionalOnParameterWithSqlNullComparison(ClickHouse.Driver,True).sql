-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	CASE
		WHEN r.A = r.B THEN true
		ELSE false
	END
FROM
	NullableFlagTable r
ORDER BY
	r.Id

