-- PostgreSQL.15 PostgreSQL12
SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.15 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO "QualifiedIdTable"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

