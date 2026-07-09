-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	test_schema.testserialidentity t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

INSERT INTO test_schema.testserialidentity DEFAULT VALUES
RETURNING 
	"ID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t1."ID"
FROM
	test_schema.testserialidentity t1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	test_schema.testserialidentity t1

