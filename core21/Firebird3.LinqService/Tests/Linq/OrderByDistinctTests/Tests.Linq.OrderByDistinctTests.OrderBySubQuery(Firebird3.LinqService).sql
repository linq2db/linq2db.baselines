﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "OrderByDistinctData"
(
	"Id"            Int                                    NOT NULL,
	"DuplicateData" VarChar(255) CHARACTER SET UNICODE_FSS,
	"OrderData1"    Int                                    NOT NULL,
	"OrderData2"    Int                                    NOT NULL,

	CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t"."DuplicateData",
	(
		SELECT
			Count(*)
		FROM
			"OrderByDistinctData" "s"
		WHERE
			("s"."DuplicateData" IS NULL AND "t"."DuplicateData" IS NULL OR "s"."DuplicateData" = "t"."DuplicateData")
	)
FROM
	(
		SELECT FIRST @take
			"t1"."Id",
			"t1"."DuplicateData"
		FROM
			"OrderByDistinctData" "t1"
	) "t"
ORDER BY
	"t"."Id" DESC

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "OrderByDistinctData"

