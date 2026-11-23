-- ClickHouse.MySql ClickHouse
SELECT
	Power(toFloat64(r.B + r.C), toFloat64(2)),
	Power(toFloat64(r.C), toFloat64(r.B + r.C)),
	Power(toFloat64(r.B), toFloat64(2)) + r.C,
	Power(toFloat64(r.B - r.C), toFloat64(2)),
	Power(toFloat64(r.C), toFloat64(r.B - r.C)),
	Power(toFloat64(r.B), toFloat64(2)) - r.C,
	Power(toFloat64(r.B * r.C), toFloat64(2)),
	Power(toFloat64(r.C), toFloat64(r.B * r.C)),
	Power(toFloat64(r.B), toFloat64(2)) * r.C,
	Power(toFloat64(intDiv(r.B, r.C)), toFloat64(2)),
	Power(toFloat64(r.C), toFloat64(intDiv(r.B, r.C))),
	Power(toFloat64(r.B), toFloat64(2)) / r.C,
	Power(toFloat64(negate(r.B)), toFloat64(2)),
	negate(Power(toFloat64(r.B), toFloat64(2))),
	Power(toFloat64(r.C), Power(toFloat64(r.C), toFloat64(r.C))),
	Power(Power(toFloat64(r.C), toFloat64(negate(r.B))), toFloat64(r.C)),
	Power(toFloat64(r.B + r.C), toFloat64(2))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

