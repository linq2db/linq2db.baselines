﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdatedEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdatedEntities"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NewEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NewEntities"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			("UpdatedEntities"."Value1" * "t2"."Value1") * CAST(@int1 AS Int)
		FROM
			(
				SELECT
					"t_1"."Value1",
					"c_2"."id"
				FROM
					"UpdatedEntities" "c_2"
						INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
				WHERE
					"t_1"."id" <> @someId
				ORDER BY
					"c_2"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	),
	"Value2" = (
		SELECT
			("UpdatedEntities"."Value2" * "t3"."Value2") * CAST(@int2 AS Int)
		FROM
			(
				SELECT
					"t_2"."Value2",
					"c_3"."id"
				FROM
					"UpdatedEntities" "c_3"
						INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
				WHERE
					"t_2"."id" <> @someId
				ORDER BY
					"c_3"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t3"
		WHERE
			"UpdatedEntities"."id" = "t3"."id"
	),
	"Value3" = (
		SELECT
			("UpdatedEntities"."Value3" * "t4"."Value3") * CAST(@int3 AS Int)
		FROM
			(
				SELECT
					"t_3"."Value3",
					"c_4"."id"
				FROM
					"UpdatedEntities" "c_4"
						INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
				WHERE
					"t_3"."id" <> @someId
				ORDER BY
					"c_4"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"c_1"."id"
				FROM
					"UpdatedEntities" "c_1"
						INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
				WHERE
					"t"."id" <> @someId
				ORDER BY
					"c_1"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t1"
		WHERE
			"UpdatedEntities"."id" = "t1"."id"
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NewEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NewEntities"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdatedEntities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdatedEntities"';
END

