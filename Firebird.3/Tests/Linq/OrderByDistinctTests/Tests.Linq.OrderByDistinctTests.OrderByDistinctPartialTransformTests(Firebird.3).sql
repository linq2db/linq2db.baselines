BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "OrderByDistinctData"
			(
				"Id"            Int                                    NOT NULL,
				"DuplicateData" VarChar(255) CHARACTER SET UNICODE_FSS,
				"OrderData1"    Int                                    NOT NULL,
				"OrderData2"    Int                                    NOT NULL,

				CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
SELECT 1,CAST('One' AS VarChar(255) CHARACTER SET UNICODE_FSS),1,1 FROM rdb$database UNION ALL
SELECT 2,'One',1,10 FROM rdb$database UNION ALL
SELECT 3,'One',2,2 FROM rdb$database UNION ALL
SELECT 4,'One',3,3 FROM rdb$database UNION ALL
SELECT 5,'One',4,4 FROM rdb$database UNION ALL
SELECT 6,'One',5,5 FROM rdb$database UNION ALL
SELECT 10,'Two',1,1 FROM rdb$database UNION ALL
SELECT 20,'Two',1,10 FROM rdb$database UNION ALL
SELECT 30,'Two',2,2 FROM rdb$database UNION ALL
SELECT 40,'Two',3,3 FROM rdb$database UNION ALL
SELECT 50,'Two',4,4 FROM rdb$database UNION ALL
SELECT 60,'Two',5,5 FROM rdb$database UNION ALL
SELECT 100,'Three',1,1 FROM rdb$database UNION ALL
SELECT 200,'Three',1,10 FROM rdb$database UNION ALL
SELECT 300,'Three',2,2 FROM rdb$database UNION ALL
SELECT 400,'Three',3,3 FROM rdb$database UNION ALL
SELECT 500,'Three',4,4 FROM rdb$database UNION ALL
SELECT 600,'Three',5,5 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 0
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData",
	"x"."OrderData2"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData2" DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

