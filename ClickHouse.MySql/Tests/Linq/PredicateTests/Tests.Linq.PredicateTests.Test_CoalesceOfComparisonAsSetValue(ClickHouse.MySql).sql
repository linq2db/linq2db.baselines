-- ClickHouse.MySql ClickHouse
ALTER TABLE
	NullableFlagTable
UPDATE
	Flag = CASE
		WHEN A = B OR A IS NULL AND B IS NULL THEN true
		ELSE false
	END
WHERE 1

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	r.Flag
FROM
	NullableFlagTable r
ORDER BY
	r.Id

