BeforeExecute
-- ClickHouse.MySql ClickHouse

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
				INNER JOIN LinqDataTypes r ON u.IntValue = r.IntValue AND u.IntValue = r.IntValue AND r.BoolValue = false
				INNER JOIN LinqDataTypes f ON r.IntValue = f.IntValue
		WHERE
			x.BoolValue = false AND
			x.IntValue = 1 AND
			x.IntValue = 2 AND
			o.BoolValue = false AND
			u.BoolValue = false
	) x_1
WHERE
	toInt32(x_1.StatusPhase) NOT IN (11, 18, 19, 20, 21, 22, 23, 24, 26, 29, 28)

