-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO testdata.public."Issue681Table4"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

