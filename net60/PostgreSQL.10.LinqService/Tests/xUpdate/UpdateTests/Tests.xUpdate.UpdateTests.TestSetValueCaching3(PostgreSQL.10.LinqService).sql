﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UpdateSetTest"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "UpdateSetTest"
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Uuid -- Guid
SET     @Value1 = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 10
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 6
DECLARE @Value4 Uuid -- Guid
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL
DECLARE @Value6 Integer -- Int32
SET     @Value6 = NULL

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
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4,
	:Value5,
	:Value6
)

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

DROP TABLE IF EXISTS "UpdateSetTest"

