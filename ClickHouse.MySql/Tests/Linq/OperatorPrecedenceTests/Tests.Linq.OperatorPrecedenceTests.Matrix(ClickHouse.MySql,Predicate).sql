-- ClickHouse.MySql ClickHouse
SELECT
	CASE
		WHEN r.A + r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A + r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B + r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(r.A + r.B)), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.A + r.B <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> r.A + r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A - r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B - r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(r.A - r.B)), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.A - r.B <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> r.A - r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A * r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B * r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(r.A * r.B)), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.A * r.B <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> r.A * r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN intDiv(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < intDiv(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN intDiv(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN intDiv(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN intDiv(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(intDiv(r.A, r.B))), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN intDiv(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR intDiv(r.A, r.B) <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> intDiv(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A % r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B % r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(r.A % r.B)), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.A % r.B <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> r.A % r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitAnd(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < bitAnd(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitAnd(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN bitAnd(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitAnd(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(bitAnd(r.A, r.B))), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitAnd(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR bitAnd(r.A, r.B) <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> bitAnd(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitOr(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < bitOr(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitOr(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN bitOr(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitOr(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(bitOr(r.A, r.B))), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitOr(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR bitOr(r.A, r.B) <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> bitOr(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitXor(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < bitXor(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitXor(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN bitXor(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitXor(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN startsWith(concat(Coalesce(r.S, ''), toString(bitXor(r.A, r.B))), 'x5')
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitXor(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR bitXor(r.A, r.B) <> r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL OR r.N <> bitXor(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN negate(r.A) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = negate(r.A) THEN 1
		ELSE 0
	END,
	CASE
		WHEN bitNot(r.A) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = bitNot(r.A) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = -5 THEN 1
		ELSE 0
	END
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	CASE
		WHEN -5 = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = -5 THEN 1
		ELSE 0
	END
FROM
	PrecedenceRow r
ORDER BY
	r.Id

