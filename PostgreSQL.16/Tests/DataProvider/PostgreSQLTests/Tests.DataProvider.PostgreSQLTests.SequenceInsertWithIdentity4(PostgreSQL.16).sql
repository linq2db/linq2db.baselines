-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DELETE FROM
	test_schema."TestSchemaIdentity" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ID"
FROM
	test_schema."TestSchemaIdentity" t1
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DELETE FROM
	test_schema."TestSchemaIdentity" t1

