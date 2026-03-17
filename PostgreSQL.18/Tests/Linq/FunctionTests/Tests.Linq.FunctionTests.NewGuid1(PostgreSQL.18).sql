-- PostgreSQL.18 PostgreSQL

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" <> gen_random_uuid()

