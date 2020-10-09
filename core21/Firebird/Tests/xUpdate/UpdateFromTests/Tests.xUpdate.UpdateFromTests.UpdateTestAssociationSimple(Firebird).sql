BeforeExecute
-- Firebird

CREATE TABLE "UpdatedEntities"
(
	"id"         Int NOT NULL,
	"Value1"     Int NOT NULL,
	"Value2"     Int NOT NULL,
	"Value3"     Int NOT NULL,
	"RelationId" Int,

	CONSTRAINT "PK_UpdatedEntities" PRIMARY KEY ("id")
)

BeforeExecute
-- Firebird

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
SELECT 0,1,1,3,0 FROM rdb$database UNION ALL
SELECT 1,11,12,13,1 FROM rdb$database UNION ALL
SELECT 2,21,22,23,2 FROM rdb$database UNION ALL
SELECT 3,31,32,33,3 FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "UpdateRelation"
(
	"id"            Int NOT NULL,
	"RelatedValue1" Int NOT NULL,
	"RelatedValue2" Int NOT NULL,
	"RelatedValue3" Int NOT NULL,

	CONSTRAINT "PK_UpdateRelation" PRIMARY KEY ("id")
)

BeforeExecute
-- Firebird

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
SELECT 0,1,2,3 FROM rdb$database UNION ALL
SELECT 1,11,12,13 FROM rdb$database UNION ALL
SELECT 2,21,22,23 FROM rdb$database UNION ALL
SELECT 3,31,32,33 FROM rdb$database

BeforeExecute
-- Firebird

UPDATE
	"UpdatedEntities"
SET
	"UpdatedEntities"."Value1" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"UpdatedEntities"."Value2" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"UpdatedEntities"."Value3" = 1
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			"UpdatedEntities" "v"
				LEFT JOIN "UpdateRelation" "a_Relation" ON "v"."RelationId" = "a_Relation"."id"
		WHERE
			"a_Relation"."RelatedValue1" = 11 AND "UpdatedEntities"."id" = "v"."id"
	)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"v"."Value1", 
	"v"."Value2", 
	"v"."Value3"
FROM
	"UpdatedEntities" "v"
		LEFT JOIN "UpdateRelation" "a_Relation" ON "v"."RelationId" = "a_Relation"."id"
WHERE
	"a_Relation"."RelatedValue1" = 11

BeforeExecute
-- Firebird

DROP TABLE "UpdateRelation"

BeforeExecute
-- Firebird

DROP TABLE "UpdatedEntities"

