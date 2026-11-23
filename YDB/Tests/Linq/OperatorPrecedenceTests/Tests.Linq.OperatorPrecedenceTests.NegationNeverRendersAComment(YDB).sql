-- YDB Ydb
SELECT
	-(-5 * r.A) as NegatedProductOfNegative,
	-(r.A * -5) as NegatedProductByNegative,
	-(r.A - -5) as NegatedDifference,
	-(-5) + r.A as NegatedLiteralPlus,
	-(-r.A + r.B) as NegatedNegation
FROM
	PrecedenceRow r
ORDER BY
	r.Id

