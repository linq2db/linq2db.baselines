-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DELETE FROM
	test_schema.testserialidentity t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
INSERT INTO test_schema.testserialidentity DEFAULT VALUES
RETURNING 
	"ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ID"
FROM
	test_schema.testserialidentity t1
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DELETE FROM
	test_schema.testserialidentity t1

