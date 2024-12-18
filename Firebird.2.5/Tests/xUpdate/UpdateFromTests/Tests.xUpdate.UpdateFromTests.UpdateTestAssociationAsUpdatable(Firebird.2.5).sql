BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdatedEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdatedEntities"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdatedEntities')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UpdatedEntities"
			(
				"id"         Int NOT NULL,
				"Value1"     Int NOT NULL,
				"Value2"     Int NOT NULL,
				"Value3"     Int NOT NULL,
				"RelationId" Int,

				CONSTRAINT "PK_UpdatedEntities" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdateRelation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdateRelation"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdateRelation')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UpdateRelation"
			(
				"id"            Int NOT NULL,
				"RelatedValue1" Int NOT NULL,
				"RelatedValue2" Int NOT NULL,
				"RelatedValue3" Int NOT NULL,

				CONSTRAINT "PK_UpdateRelation" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			"a_Relation_1"."RelatedValue3"
		FROM
			"UpdatedEntities" "v_1"
				LEFT JOIN "UpdateRelation" "a_Relation_1" ON "v_1"."RelationId" = "a_Relation_1"."id" AND "v_1"."RelationId" IS NOT NULL
		WHERE
			"a_Relation_1"."RelatedValue1" = 11 AND "a_Relation_1"."RelatedValue1" IS NOT NULL AND
			"UpdatedEntities"."id" = "v_1"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "v"
				LEFT JOIN "UpdateRelation" "a_Relation" ON "v"."RelationId" = "a_Relation"."id" AND "v"."RelationId" IS NOT NULL
		WHERE
			"a_Relation"."RelatedValue1" = 11 AND "a_Relation"."RelatedValue1" IS NOT NULL AND
			"UpdatedEntities"."id" = "v"."id"
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"v"."Value1"
FROM
	"UpdatedEntities" "v"
		LEFT JOIN "UpdateRelation" "a_Relation" ON "v"."RelationId" = "a_Relation"."id" AND "v"."RelationId" IS NOT NULL
WHERE
	"a_Relation"."RelatedValue1" = 11 AND "a_Relation"."RelatedValue1" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdateRelation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdateRelation"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdatedEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdatedEntities"';
END

