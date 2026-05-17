-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	testdata.public."Issue681Table" t1
WHERE
	t1."ID" = :ID

