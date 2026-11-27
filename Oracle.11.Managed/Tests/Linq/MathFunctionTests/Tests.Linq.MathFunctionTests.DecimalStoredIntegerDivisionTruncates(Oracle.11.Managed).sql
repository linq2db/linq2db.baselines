-- Oracle.11.Managed Oracle11
SELECT
	Trunc(CAST(t.X AS Int) / 2)
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
SELECT
	t."Id"
FROM
	"DecimalStoredIntegerTable" t
WHERE
	Trunc(CAST(t.X AS Int) / 2) = -3
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
DECLARE @two Decimal
SET     @two = 2

SELECT
	Trunc(CAST(t.X AS Int) / CAST(:two AS Int))
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
SELECT
	Trunc(CAST(t.X + 1 AS Int) / 2)
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
SELECT
	Trunc(CAST(-t.X AS Int) / 2)
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
SELECT
	Trunc(CAST(Abs(t.X) AS Int) / 2)
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
SELECT
	Trunc(60 / CAST(t.X AS Int))
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
SELECT
	Trunc(CAST(t.X AS Int) / CAST(t.X2 AS Int))
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.X,
	t1.X2
FROM
	"DecimalStoredIntegerTable" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."c1"
FROM
	(
		SELECT
			Trunc(CAST(SUM(g_1.X) AS Int) / 2) as "c1"
		FROM
			"DecimalStoredIntegerTable" g_1
	) t1
WHERE
	ROWNUM <= 2

