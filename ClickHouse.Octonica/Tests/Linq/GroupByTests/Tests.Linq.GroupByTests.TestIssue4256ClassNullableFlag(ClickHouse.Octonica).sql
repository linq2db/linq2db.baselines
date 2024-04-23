BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	it_1.IsActive,
	it_1.Other
FROM
	(
		SELECT
			true as IsActive,
			CASE
				WHEN it.SmallIntValue <> 0 THEN true
				ELSE false
			END as Other
		FROM
			LinqDataTypes it
	) it_1
GROUP BY
	it_1.IsActive,
	it_1.Other

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

