-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ID",
	t1."Value"
FROM
	"Issue681Table" t1

