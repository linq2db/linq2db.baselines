-- PostgreSQL.11 PostgreSQL
SELECT
	t."X"::Int / 2
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id"
FROM
	"DecimalStoredIntegerTable" t
WHERE
	t."X"::Int / 2 = -3
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
DECLARE @two Numeric -- Decimal
SET     @two = 2

SELECT
	t."X"::Int / :two::Int
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	(t."X" + 1)::Int / 2
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	(-t."X")::Int / 2
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	Abs(t."X")::Int / 2
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	60 / t."X"::Int
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	t."X"::Int / t."X2"::Int
FROM
	"DecimalStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."X",
	t1."X2"
FROM
	"DecimalStoredIntegerTable" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	SUM(g_1."X")::Int / 2
FROM
	"DecimalStoredIntegerTable" g_1
LIMIT 2

