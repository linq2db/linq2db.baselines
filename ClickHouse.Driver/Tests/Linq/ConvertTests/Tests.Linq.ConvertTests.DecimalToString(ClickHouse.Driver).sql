-- ClickHouse.Driver ClickHouse

SELECT
	trim(TRAILING '0.' FROM Replace(toString(p.MoneyValue), ',', '.'))
FROM
	LinqDataTypes p
WHERE
	lengthUTF8(toString(p.MoneyValue)) > 0

