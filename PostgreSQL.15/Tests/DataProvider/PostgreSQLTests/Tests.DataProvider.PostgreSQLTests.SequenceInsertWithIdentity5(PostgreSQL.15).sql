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
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ID"
FROM
	test_schema.testserialidentity t1
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	test_schema.testserialidentity t1

