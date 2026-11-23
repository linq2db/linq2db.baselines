-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(r.A AS Decimal(28, 10)) * -5.5
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	"PrecedenceRow" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	-(-5.5) * r.B
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	"PrecedenceRow" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(r.A AS Float) * -5.5D
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	"PrecedenceRow" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(r.A AS Float) * 9.9999999999999995E-08D
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	"PrecedenceRow" t1

