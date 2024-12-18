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
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

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
DECLARE @id Integer -- Int32
SET     @id = 0
DECLARE @RelatedValue1 Integer -- Int32
SET     @RelatedValue1 = 1
DECLARE @RelatedValue2 Integer -- Int32
SET     @RelatedValue2 = 2
DECLARE @RelatedValue3 Integer -- Int32
SET     @RelatedValue3 = 3

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @RelatedValue1 Integer -- Int32
SET     @RelatedValue1 = 11
DECLARE @RelatedValue2 Integer -- Int32
SET     @RelatedValue2 = 12
DECLARE @RelatedValue3 Integer -- Int32
SET     @RelatedValue3 = 13

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 2
DECLARE @RelatedValue1 Integer -- Int32
SET     @RelatedValue1 = 21
DECLARE @RelatedValue2 Integer -- Int32
SET     @RelatedValue2 = 22
DECLARE @RelatedValue3 Integer -- Int32
SET     @RelatedValue3 = 23

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 3
DECLARE @RelatedValue1 Integer -- Int32
SET     @RelatedValue1 = 31
DECLARE @RelatedValue2 Integer -- Int32
SET     @RelatedValue2 = 32
DECLARE @RelatedValue3 Integer -- Int32
SET     @RelatedValue3 = 33

INSERT INTO "UpdateRelation"
(
	"id",
	"RelatedValue1",
	"RelatedValue2",
	"RelatedValue3"
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

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

