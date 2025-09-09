BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Issue681Table"
SET
	"Value" = :Value
WHERE
	"Issue681Table"."ID" = :ID

