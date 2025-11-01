-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	testdata.public."Issue681Table" t1

