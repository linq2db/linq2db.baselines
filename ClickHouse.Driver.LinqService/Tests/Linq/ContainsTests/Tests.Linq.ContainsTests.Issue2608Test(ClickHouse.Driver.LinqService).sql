BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	x_1.StatusPhase
FROM
	(
		SELECT
			toInt16(f.StringValue) as StatusPhase
		FROM
			LinqDataTypes x
				INNER JOIN LinqDataTypes o ON x.IntValue = o.IntValue
				INNER JOIN LinqDataTypes u ON o.IntValue = u.IntValue
				INNER JOIN LinqDataTypes r ON u.IntValue = r.IntValue AND r.BoolValue = false
				INNER JOIN LinqDataTypes f ON r.IntValue = f.IntValue
		WHERE
			x.BoolValue = false AND
			x.IntValue = 1 AND
			x.IntValue = 2 AND
			o.BoolValue = false AND
			u.BoolValue = false
	) x_1
WHERE
	x_1.StatusPhase NOT IN (toInt16(11), toInt16(18), toInt16(19), toInt16(20), toInt16(21), toInt16(22), toInt16(23), toInt16(24), toInt16(26), toInt16(29), toInt16(28))

