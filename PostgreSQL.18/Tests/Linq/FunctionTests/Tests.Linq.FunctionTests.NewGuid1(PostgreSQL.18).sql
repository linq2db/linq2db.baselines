-- PostgreSQL.18 PostgreSQL13

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" <> gen_random_uuid()

