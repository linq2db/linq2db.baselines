-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

