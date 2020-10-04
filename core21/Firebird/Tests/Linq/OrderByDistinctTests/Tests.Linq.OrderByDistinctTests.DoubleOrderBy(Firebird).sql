BeforeExecute
-- Firebird

CREATE TABLE "OrderByDistinctData"
(
	"Id"            Int                                    NOT NULL,
	"DuplicateData" VarChar(255) CHARACTER SET UNICODE_FSS,
	"OrderData1"    Int                                    NOT NULL,
	"OrderData2"    Int                                    NOT NULL,

	CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
SELECT 1,'One',1,1 FROM rdb$database UNION ALL
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
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"c_1"."Id",
	"c_1"."DuplicateData",
	"c_1"."OrderData1",
	"c_1"."OrderData2"
FROM
	(
		SELECT FIRST @take
			"t1"."Id"
		FROM
			"OrderByDistinctData" "t1"
		ORDER BY
			"t1"."OrderData2"
	) "q2"
		INNER JOIN "OrderByDistinctData" "c_1" ON "c_1"."Id" = "q2"."Id"
ORDER BY
	"c_1"."OrderData1"

BeforeExecute
-- Firebird

DROP TABLE "OrderByDistinctData"

