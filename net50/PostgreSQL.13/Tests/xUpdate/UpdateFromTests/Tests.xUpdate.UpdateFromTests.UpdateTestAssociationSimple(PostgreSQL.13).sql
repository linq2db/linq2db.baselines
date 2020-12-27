﻿BeforeExecute
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

DROP TABLE IF EXISTS "UpdateRelation"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "UpdateRelation"
(
	id              Int NOT NULL,
	"RelatedValue1" Int NOT NULL,
	"RelatedValue2" Int NOT NULL,
	"RelatedValue3" Int NOT NULL,

	CONSTRAINT "PK_UpdateRelation" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "UpdateRelation"
(
	id,
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(0,1,2,3),
(1,11,12,13),
(2,21,22,23),
(3,31,32,33)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"UpdatedEntities"
SET
	"Value1" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"Value2" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"Value3" = 1
FROM
	"UpdatedEntities" v
		LEFT JOIN "UpdateRelation" "a_Relation" ON v."RelationId" = "a_Relation".id
WHERE
	"a_Relation"."RelatedValue1" = 11 AND "UpdatedEntities".id = v.id

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v
		LEFT JOIN "UpdateRelation" "a_Relation" ON v."RelationId" = "a_Relation".id
WHERE
	"a_Relation"."RelatedValue1" = 11
LIMIT :take

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UpdateRelation"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UpdatedEntities"

