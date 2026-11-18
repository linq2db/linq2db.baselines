-- ClickHouse.Driver ClickHouse
ALTER TABLE
	NullableFlagTable
UPDATE
	Flag = CASE
		WHEN A = B OR A IS NULL AND B IS NULL THEN true
		ELSE false
	END
WHERE 1

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	r.Flag
FROM
	NullableFlagTable r
ORDER BY
	r.Id

