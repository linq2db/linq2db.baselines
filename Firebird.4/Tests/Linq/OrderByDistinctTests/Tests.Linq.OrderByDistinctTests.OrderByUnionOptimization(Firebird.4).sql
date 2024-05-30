BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT DISTINCT
	"t1"."Id"
FROM
	(
		SELECT
			"x_2"."Id",
			"x_2"."DuplicateData",
			"x_2"."OrderData1",
			"x_2"."OrderData2"
		FROM
			(
				SELECT
					"x"."Id",
					"x"."DuplicateData",
					"x"."OrderData1",
					"x"."OrderData2"
				FROM
					"OrderByDistinctData" "x"
				WHERE
					"x"."Id" BETWEEN 1 AND 9
				UNION ALL
				SELECT
					"x_1"."Id",
					"x_1"."DuplicateData",
					"x_1"."OrderData1",
					"x_1"."OrderData2"
				FROM
					"OrderByDistinctData" "x_1"
				WHERE
					"x_1"."Id" BETWEEN 10 AND 90
			) "x_2"
		UNION
		SELECT
			"x_3"."Id",
			"x_3"."DuplicateData",
			"x_3"."OrderData1",
			"x_3"."OrderData2"
		FROM
			"OrderByDistinctData" "x_3"
		WHERE
			"x_3"."Id" BETWEEN 100 AND 900
	) "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OrderByDistinctData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OrderByDistinctData"';
END

