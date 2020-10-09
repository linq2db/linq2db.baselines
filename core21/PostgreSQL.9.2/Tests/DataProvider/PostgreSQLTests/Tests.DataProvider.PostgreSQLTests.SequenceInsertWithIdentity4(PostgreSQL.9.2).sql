BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	test_schema."TestSchemaIdentity" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO test_schema."TestSchemaIdentity"
(
	"ID"
)
VALUES
(
	nextval('test_schema."TestSchemaIdentity_ID_seq"')
)
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	t1."ID"
FROM
	test_schema."TestSchemaIdentity" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	test_schema."TestSchemaIdentity" t1

