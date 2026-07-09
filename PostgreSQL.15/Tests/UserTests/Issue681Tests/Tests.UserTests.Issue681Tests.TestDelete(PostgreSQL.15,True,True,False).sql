-- PostgreSQL.15 PostgreSQL13

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.15 PostgreSQL13
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Issue681Table" t1
WHERE
	t1."ID" = :ID

