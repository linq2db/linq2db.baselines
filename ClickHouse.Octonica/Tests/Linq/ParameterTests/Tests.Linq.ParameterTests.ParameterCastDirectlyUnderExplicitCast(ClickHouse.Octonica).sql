-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Value,
	t.Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t.Value = toString(4)

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Value,
	t.Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t.Money = toDecimal128(4, 10)

