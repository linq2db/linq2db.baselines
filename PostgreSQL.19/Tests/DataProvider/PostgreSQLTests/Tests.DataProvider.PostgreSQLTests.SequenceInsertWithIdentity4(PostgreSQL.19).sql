-- PostgreSQL.19 PostgreSQL13

DELETE FROM
	test_schema."TestSchemaIdentity" t1

-- PostgreSQL.19 PostgreSQL13

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

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ID"
FROM
	test_schema."TestSchemaIdentity" t1
LIMIT 2

-- PostgreSQL.19 PostgreSQL13

DELETE FROM
	test_schema."TestSchemaIdentity" t1

