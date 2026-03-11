-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" <> gen_random_uuid()

