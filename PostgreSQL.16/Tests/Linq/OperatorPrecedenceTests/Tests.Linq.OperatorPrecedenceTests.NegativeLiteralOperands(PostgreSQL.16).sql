-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."A"::decimal * -5.5
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."N",
	t1."S"
FROM
	"PrecedenceRow" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	-(-5.5) * r."B"
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."N",
	t1."S"
FROM
	"PrecedenceRow" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."A"::Float * -5.5
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."N",
	t1."S"
FROM
	"PrecedenceRow" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."A"::Float * 9.9999999999999995E-08
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."N",
	t1."S"
FROM
	"PrecedenceRow" t1

