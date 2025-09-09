BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	public."Issue681Table" t1
WHERE
	t1."ID" = :ID

