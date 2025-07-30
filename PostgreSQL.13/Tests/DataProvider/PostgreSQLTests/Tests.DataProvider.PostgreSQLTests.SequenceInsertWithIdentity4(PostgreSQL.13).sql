BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	test_schema."TestSchemaIdentity" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_schema."TestSchemaIdentity" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	test_schema."TestSchemaIdentity" t1

