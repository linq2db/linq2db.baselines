BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	test_schema.testserialidentity t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO test_schema.testserialidentity DEFAULT VALUES
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	test_schema.testserialidentity t1
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	test_schema.testserialidentity t1

