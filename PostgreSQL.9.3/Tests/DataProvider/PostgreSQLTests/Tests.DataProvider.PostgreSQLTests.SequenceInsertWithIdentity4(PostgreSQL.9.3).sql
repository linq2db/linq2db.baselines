-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	test_schema."TestSchemaIdentity" t1

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ID"
FROM
	test_schema."TestSchemaIdentity" t1
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	test_schema."TestSchemaIdentity" t1

