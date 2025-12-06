-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 11
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value2" = :Value2
WHERE
	"UpdateSetTest"."Id" = :id

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value2"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 12
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value2" = :Value2
WHERE
	"UpdateSetTest"."Id" = :id

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value2"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

