-- PostgreSQL.18 PostgreSQL12
SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.18 PostgreSQL12
SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.18 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO testdata.public."QualifiedIdTable"
(
	"Value"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

