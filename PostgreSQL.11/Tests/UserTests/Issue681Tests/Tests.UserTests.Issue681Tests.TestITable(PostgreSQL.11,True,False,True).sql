-- PostgreSQL.11 PostgreSQL
SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."ID",
	t1."Value"
FROM
	public."Issue681Table" t1

