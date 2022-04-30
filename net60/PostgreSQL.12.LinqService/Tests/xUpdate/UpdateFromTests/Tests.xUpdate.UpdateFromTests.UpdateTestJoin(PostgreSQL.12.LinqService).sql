﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UpdatedEntities"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "UpdatedEntities"
(
	id           Int NOT NULL,
	"Value1"     Int NOT NULL,
	"Value2"     Int NOT NULL,
	"Value3"     Int NOT NULL,
	"RelationId" Int     NULL,

	CONSTRAINT "PK_UpdatedEntities" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 3
DECLARE @RelationId Integer -- Int32
SET     @RelationId = 0

INSERT INTO "UpdatedEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 12
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 13
DECLARE @RelationId Integer -- Int32
SET     @RelationId = 1

INSERT INTO "UpdatedEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 21
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 22
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 23
DECLARE @RelationId Integer -- Int32
SET     @RelationId = 2

INSERT INTO "UpdatedEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 31
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 32
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 33
DECLARE @RelationId Integer -- Int32
SET     @RelationId = 3

INSERT INTO "UpdatedEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3,
	:RelationId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NewEntities"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "NewEntities"
(
	id       Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,

	CONSTRAINT "PK_NewEntities" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 0

INSERT INTO "NewEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 1

INSERT INTO "NewEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 2
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 2

INSERT INTO "NewEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 3
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 3

INSERT INTO "NewEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	:id,
	:Value1,
	:Value2,
	:Value3
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33
DECLARE @someId Integer -- Int32
SET     @someId = 100

UPDATE
	"UpdatedEntities"
SET
	"Value1" = ("UpdatedEntities"."Value1" * t."Value1") * :int1,
	"Value2" = ("UpdatedEntities"."Value2" * t."Value2") * :int2,
	"Value3" = ("UpdatedEntities"."Value3" * t."Value3") * :int3
FROM
	"UpdatedEntities" c_1
		INNER JOIN "NewEntities" t ON t.id = c_1.id
WHERE
	t.id <> :someId AND "UpdatedEntities".id = c_1.id

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	v.id,
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NewEntities"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UpdatedEntities"

