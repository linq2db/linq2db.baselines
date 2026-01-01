-- ClickHouse.MySql ClickHouse

ALTER TABLE
	WarehouseTableDto
UPDATE
	Value = bitAnd(bitOr(Value, 3), bitNot(12))
WHERE 1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	WarehouseTableDto t1
LIMIT 2

