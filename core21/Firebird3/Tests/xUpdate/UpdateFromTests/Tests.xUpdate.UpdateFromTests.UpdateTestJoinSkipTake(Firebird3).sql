BeforeExecute
-- Firebird3 Firebird

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

CREATE TABLE "NewEntities"
(
	"id"     Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,

	CONSTRAINT "PK_NewEntities" PRIMARY KEY ("id")
)

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
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1
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
			("t1"."Value1" * "t1"."Value1_1") * Cast(@int1 as Int)
		FROM
			(
				SELECT FIRST @take SKIP @skip
					"c_1"."Value1",
					"t"."Value1" as "Value1_1",
					"c_1"."id"
				FROM
					"UpdatedEntities" "c_1"
						INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
				WHERE
					"t"."id" <> @someId
				ORDER BY
					"c_1"."id"
			) "t1"
		WHERE
			"UpdatedEntities"."id" = "t1"."id"
	),
	"UpdatedEntities"."Value2" = (
		SELECT
			("t2"."Value2" * "t2"."Value2_1") * Cast(@int2 as Int)
		FROM
			(
				SELECT FIRST @take SKIP @skip
					"c_2"."Value2",
					"t_1"."Value2" as "Value2_1",
					"c_2"."id"
				FROM
					"UpdatedEntities" "c_2"
						INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
				WHERE
					"t_1"."id" <> @someId
				ORDER BY
					"c_2"."id"
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	),
	"UpdatedEntities"."Value3" = (
		SELECT
			("t3"."Value3" * "t3"."Value3_1") * Cast(@int3 as Int)
		FROM
			(
				SELECT FIRST @take SKIP @skip
					"c_3"."Value3",
					"t_2"."Value3" as "Value3_1",
					"c_3"."id"
				FROM
					"UpdatedEntities" "c_3"
						INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
				WHERE
					"t_2"."id" <> @someId
				ORDER BY
					"c_3"."id"
			) "t3"
		WHERE
			"UpdatedEntities"."id" = "t3"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST @take SKIP @skip
					"c_4"."id"
				FROM
					"UpdatedEntities" "c_4"
						INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
				WHERE
					"t_3"."id" <> @someId
				ORDER BY
					"c_4"."id"
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "NewEntities"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "UpdatedEntities"

