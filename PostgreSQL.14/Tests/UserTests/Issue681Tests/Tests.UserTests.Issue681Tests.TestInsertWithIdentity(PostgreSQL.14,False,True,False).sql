-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table4"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

