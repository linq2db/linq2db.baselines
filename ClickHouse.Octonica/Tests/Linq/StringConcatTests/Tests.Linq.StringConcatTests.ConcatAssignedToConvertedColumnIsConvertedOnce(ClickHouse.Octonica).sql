-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	ConvertedTargetRow
UPDATE
	Conv = concat('x:', Sku, '-s')
WHERE 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Conv
FROM
	ConvertedTargetRow t1
LIMIT 2

