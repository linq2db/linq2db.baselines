-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value4 Uuid -- Guid
SET     @Value4 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value4" = :Value4
WHERE
	"UpdateSetTest"."Id" = :id

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value4"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value4 Uuid -- Guid
SET     @Value4 = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value4" = :Value4
WHERE
	"UpdateSetTest"."Id" = :id

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value4"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

