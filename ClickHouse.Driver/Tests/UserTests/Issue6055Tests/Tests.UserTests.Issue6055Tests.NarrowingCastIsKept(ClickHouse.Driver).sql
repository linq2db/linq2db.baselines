-- ClickHouse.Driver ClickHouse
SELECT
	toDecimal128(r.A + r.B, 10)
FROM
	DecimalTable r
LIMIT 2

