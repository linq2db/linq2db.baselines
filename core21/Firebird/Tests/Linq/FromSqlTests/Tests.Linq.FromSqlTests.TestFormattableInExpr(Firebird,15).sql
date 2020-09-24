BeforeExecute
-- Firebird

CREATE TABLE SAMPLE_CLASS
(
	ID      Int                                   NOT NULL,
	"value" VarChar(50) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO SAMPLE_CLASS
(
	ID,
	"value"
)
SELECT 1,'Str_1' FROM rdb$database UNION ALL
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
-- Firebird
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 15

SELECT
	"s"."value",
	"s".ID
FROM
	SAMPLE_CLASS "c_1"
		INNER JOIN (
			SELECT * FROM SAMPLE_CLASS where id >= @startId and id < @endId
		) "s" ON "s".ID = "c_1".ID
WHERE
	"s".ID > 10

BeforeExecute
-- Firebird
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 15

SELECT
	"t"."value",
	"t".ID
FROM
	SAMPLE_CLASS "t"
WHERE
	"t".ID >= @startId AND "t".ID < @endId AND "t".ID > 10

BeforeExecute
-- Firebird

DROP TABLE SAMPLE_CLASS

