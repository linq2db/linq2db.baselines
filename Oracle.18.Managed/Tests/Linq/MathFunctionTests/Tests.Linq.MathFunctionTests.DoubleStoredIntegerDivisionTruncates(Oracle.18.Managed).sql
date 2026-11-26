-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Trunc(CAST(t.D AS Int) / 2)
FROM
	"DoubleStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.D
FROM
	"DoubleStoredIntegerTable" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."Id"
FROM
	"DoubleStoredIntegerTable" t
WHERE
	Trunc(CAST(t.D AS Int) / 2) = -3
ORDER BY
	t."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.D
FROM
	"DoubleStoredIntegerTable" t1

