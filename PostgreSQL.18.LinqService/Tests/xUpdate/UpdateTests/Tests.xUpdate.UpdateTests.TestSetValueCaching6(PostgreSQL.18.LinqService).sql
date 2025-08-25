BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Value6 Integer -- Int32
SET     @Value6 = 7
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value6" = :Value6
WHERE
	"UpdateSetTest"."Id" = :id

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value6"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Value6 Integer -- Int32
SET     @Value6 = 8
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value6" = :Value6
WHERE
	"UpdateSetTest"."Id" = :id

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Value6"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT 2

