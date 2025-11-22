-- PostgreSQL.15 PostgreSQL

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" <> gen_random_uuid()

