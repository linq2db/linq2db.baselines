-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, Floor(p."ID"::decimal % 1)::Int::Float) < '2010-01-01 10:00:00.500'::timestamp

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, Floor(p."ID"::decimal % 1)::Int::Float) >= '2010-01-01 10:00:00.500'::timestamp

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, Floor(p."ID"::decimal % 1)::Int::Float) = '2010-01-01 10:00:00.500'::timestamp

