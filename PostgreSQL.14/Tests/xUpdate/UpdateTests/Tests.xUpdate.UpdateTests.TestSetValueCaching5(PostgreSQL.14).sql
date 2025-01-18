BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 11
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value5" = :Value5
WHERE
	"UpdateSetTest"."Id" = :id

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value5"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = 12
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value5" = :Value5
WHERE
	"UpdateSetTest"."Id" = :id

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value5"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

