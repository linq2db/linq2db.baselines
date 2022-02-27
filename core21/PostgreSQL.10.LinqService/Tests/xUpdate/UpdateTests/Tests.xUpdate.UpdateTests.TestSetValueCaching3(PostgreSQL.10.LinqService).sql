BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "UpdateSetTest"
(
	"Id"     Int  NOT NULL,
	"Value1" uuid NOT NULL,
	"Value2" Int  NOT NULL,
	"Value3" Int  NOT NULL,
	"Value4" uuid     NULL,
	"Value5" Int      NULL,
	"Value6" Int      NULL,

	CONSTRAINT "PK_UpdateSetTest" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "UpdateSetTest"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4",
	"Value5",
	"Value6"
)
VALUES
(1,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',10,6,NULL,NULL,NULL)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 7
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value3" = :Value3
WHERE
	"UpdateSetTest"."Id" = :id

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Value3"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 8
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"Value3" = :Value3
WHERE
	"UpdateSetTest"."Id" = :id

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Value3"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
LIMIT :take

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "UpdateSetTest"

