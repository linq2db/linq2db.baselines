-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DELETE FROM
	test_schema.testserialidentity t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

INSERT INTO test_schema.testserialidentity DEFAULT VALUES
RETURNING 
	"ID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t1."ID"
FROM
	test_schema.testserialidentity t1
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DELETE FROM
	test_schema.testserialidentity t1

