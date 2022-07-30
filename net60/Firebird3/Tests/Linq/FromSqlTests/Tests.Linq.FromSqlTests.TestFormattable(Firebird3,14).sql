﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'sample_class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "sample_class"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'sample_class')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "sample_class"
			(
				"id"    Int                                   NOT NULL,
				"value" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "sample_class"
(
	"id",
	"value"
)
SELECT 1,CAST('Str_1' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Str_2' FROM rdb$database UNION ALL
SELECT 3,'Str_3' FROM rdb$database UNION ALL
SELECT 4,'Str_4' FROM rdb$database UNION ALL
SELECT 5,'Str_5' FROM rdb$database UNION ALL
SELECT 6,'Str_6' FROM rdb$database UNION ALL
SELECT 7,'Str_7' FROM rdb$database UNION ALL
SELECT 8,'Str_8' FROM rdb$database UNION ALL
SELECT 9,'Str_9' FROM rdb$database UNION ALL
SELECT 10,'Str_10' FROM rdb$database UNION ALL
SELECT 11,'Str_11' FROM rdb$database UNION ALL
SELECT 12,'Str_12' FROM rdb$database UNION ALL
SELECT 13,'Str_13' FROM rdb$database UNION ALL
SELECT 14,'Str_14' FROM rdb$database UNION ALL
SELECT 15,'Str_15' FROM rdb$database UNION ALL
SELECT 16,'Str_16' FROM rdb$database UNION ALL
SELECT 17,'Str_17' FROM rdb$database UNION ALL
SELECT 18,'Str_18' FROM rdb$database UNION ALL
SELECT 19,'Str_19' FROM rdb$database UNION ALL
SELECT 20,'Str_20' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 14

SELECT
	"c_1"."value",
	"c_1"."id"
FROM
	(
		SELECT * FROM "sample_class" where "id" >= @p_1 and "id" < @p_2
	) "c_1"
WHERE
	"c_1"."id" > 10
ORDER BY
	"c_1"."id"

BeforeExecute
-- Firebird3 Firebird
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 14

SELECT
	"t"."value",
	"t"."id"
FROM
	"sample_class" "t"
WHERE
	"t"."id" >= @startId AND "t"."id" < @endId AND "t"."id" > 10
ORDER BY
	"t"."id"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'sample_class')) THEN
		EXECUTE STATEMENT 'DROP TABLE "sample_class"';
END

