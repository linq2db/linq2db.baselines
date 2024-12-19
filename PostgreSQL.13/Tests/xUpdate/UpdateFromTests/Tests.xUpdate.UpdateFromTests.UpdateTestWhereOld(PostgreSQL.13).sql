BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UpdatedEntities"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "UpdatedEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(0,1,1,3,0),
(1,11,12,13,1),
(2,21,22,23,2),
(3,31,32,33,3)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NewEntities"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "NewEntities"
(
	id       Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,

	CONSTRAINT "PK_NewEntities" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "NewEntities"
(
	id,
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(0,0,0,0),
(1,1,1,1),
(2,2,2,2),
(3,3,3,3)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
	"NewEntities" t
WHERE
	t.id = "UpdatedEntities".id AND t.id <> :someId

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	v.id,
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NewEntities"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UpdatedEntities"

