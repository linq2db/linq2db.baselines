BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
SELECT 1,CAST('One' AS VarChar(255) CHARACTER SET UNICODE_FSS),1,1 FROM rdb$database UNION ALL
SELECT 10,'Two',1,1 FROM rdb$database UNION ALL
SELECT 100,'Three',1,1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC,
	"x"."OrderData2" DESC

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

