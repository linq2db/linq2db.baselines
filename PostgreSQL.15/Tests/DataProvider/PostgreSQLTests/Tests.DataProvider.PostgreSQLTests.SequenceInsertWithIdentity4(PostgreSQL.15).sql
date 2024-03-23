BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	test_schema."TestSchemaIdentity" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	test_schema."TestSchemaIdentity" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	test_schema."TestSchemaIdentity" t1

