﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdatedEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdatedEntities"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NewEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NewEntities"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NewEntities')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "NewEntities"
			(
				"id"     Int NOT NULL,
				"Value1" Int NOT NULL,
				"Value2" Int NOT NULL,
				"Value3" Int NOT NULL,

				CONSTRAINT "PK_NewEntities" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
SELECT 0,0,0,0 FROM rdb$database UNION ALL
SELECT 1,1,1,1 FROM rdb$database UNION ALL
SELECT 2,2,2,2 FROM rdb$database UNION ALL
SELECT 3,3,3,3 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33

UPDATE
	"UpdatedEntities"
SET
	"UpdatedEntities"."Value1" = (
		SELECT
			("c_1"."Value1" * "t"."Value1") * Cast(@int1 as Int)
		FROM
			"UpdatedEntities" "c_1"
				INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
		WHERE
			"t"."id" <> @someId AND "UpdatedEntities"."id" = "c_1"."id"
	),
	"UpdatedEntities"."Value2" = (
		SELECT
			("c_2"."Value2" * "t_1"."Value2") * Cast(@int2 as Int)
		FROM
			"UpdatedEntities" "c_2"
				INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
		WHERE
			"t_1"."id" <> @someId AND "UpdatedEntities"."id" = "c_2"."id"
	),
	"UpdatedEntities"."Value3" = (
		SELECT
			("c_3"."Value3" * "t_2"."Value3") * Cast(@int3 as Int)
		FROM
			"UpdatedEntities" "c_3"
				INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
		WHERE
			"t_2"."id" <> @someId AND "UpdatedEntities"."id" = "c_3"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_4"
				INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
		WHERE
			"t_3"."id" <> @someId AND "UpdatedEntities"."id" = "c_4"."id"
	)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NewEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NewEntities"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdatedEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdatedEntities"';
END

