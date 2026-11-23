-- DuckDB
SELECT
	(r.A + r.B) % r."C",
	r.A % (r.B + r."C"),
	(r.A + r.B) % r."C",
	r.A % (r.B + r."C"),
	(r.A - r.B) % r."C",
	r.A % (r.B - r."C"),
	(r.A - r.B) % r."C",
	r.A % (r.B - r."C"),
	r.A // r.B % r."C",
	r.A // r.B % r."C",
	r.A % r.B % r."C",
	r.A % r.B % r."C",
	(r.A & r.B) % r."C",
	(r.A & r.B) % r."C",
	(r.A | r.B) % r."C",
	r.A % (r.B | r."C"),
	(r.A | r.B) % r."C",
	r.A % (r.B | r."C"),
	xor(r.A, r.B) % r."C",
	r.A % xor(r.B, r."C"),
	xor(r.A, r.B) % r."C",
	r.A % xor(r.B, r."C"),
	(r.A + r.B) % r."C",
	r.A % (r.B + r."C"),
	(r.A + -6) % r."C",
	(r.A - r.B) % r."C",
	r.A % (r.B - r."C"),
	(r.A - -6) % r."C",
	(r.A * r.B) % r."C",
	r.A % (r.B * r."C"),
	(r.A * -6) % r."C",
	(r.A / r.B) % r."C",
	r.A % (r.B / r."C"),
	(r.A / -6) % r."C",
	(r.A + r.B) % r."C",
	r.A % (r.B + r."C"),
	(r.A + -6) % r."C",
	r.A % -r.B,
	(r.A - r.B) % r."C",
	(r.A + r.B) % r."C",
	r.A // -r.B % r."C",
	r.A % -r.B % r."C",
	(r.A | -r.B) % r."C",
	xor(r.A, (-r.B)) % r."C",
	r.A % (~r.B),
	(r.A + (~r.B)) % r."C",
	(r.A - (~r.B)) % r."C",
	r.A * (~r.B) % r."C",
	r.A % (~r.B) % r."C",
	(r.A & (~r.B)) % r."C",
	(r.A | (~r.B)) % r."C",
	xor(r.A, (~r.B)) % r."C",
	r.A % -5,
	-5 % r."C",
	(r.A + -5) % r."C",
	(r.A - -5) % r."C",
	r.A * -5 % r."C",
	r.A % -5 % r."C",
	(r.A & -5) % r."C",
	(r.A | -5) % r."C",
	xor(r.A, -5) % r."C"
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- DuckDB
SELECT
	r.A % -5,
	-5 % r."C",
	(r.A + -5) % r."C",
	(r.A - -5) % r."C",
	r.A * -5 % r."C",
	r.A % -5 % r."C",
	(r.A & -5) % r."C",
	(r.A | -5) % r."C",
	xor(r.A, -5) % r."C"
FROM
	PrecedenceRow r
ORDER BY
	r.Id

