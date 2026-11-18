-- ClickHouse.Driver ClickHouse
ALTER TABLE
	ConvertedTargetRow
UPDATE
	Conv = concat('x:', Sku, '-s')
WHERE 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Conv
FROM
	ConvertedTargetRow t1
LIMIT 2

