-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" t1

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, (p."ID"::decimal % 1)::decimal::Float) < '2010-01-01 10:00:00.500'::timestamp

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, (p."ID"::decimal % 1)::decimal::Float) >= '2010-01-01 10:00:00.500'::timestamp

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	make_timestamp(2010, 1, 1, 10, 0, (p."ID"::decimal % 1)::decimal::Float) = '2010-01-01 10:00:00.500'::timestamp

