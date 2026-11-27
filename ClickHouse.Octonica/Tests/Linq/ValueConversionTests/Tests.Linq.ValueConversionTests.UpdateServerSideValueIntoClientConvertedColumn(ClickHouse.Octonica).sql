-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	ShiftedDateRow
UPDATE
	Date = CASE
		WHEN Date IS NOT NULL THEN toDateTime64('2026-06-06 02:01:01.0000000', 7)
		ELSE addDays(Plain, 1)
	END
WHERE 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Plain,
	t1.Date
FROM
	ShiftedDateRow t1
ORDER BY
	t1.Id

