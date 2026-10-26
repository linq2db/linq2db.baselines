-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t.c1
FROM
	(
		SELECT
			Trunc((-p."MoneyValue")::Float::decimal, 0)::Float as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0.10000000000000001

