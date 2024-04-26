﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "OrderByDistinctData"
		(
			"Id"            Int           NOT NULL,
			"DuplicateData" NVarChar(255)     NULL,
			"OrderData1"    Int           NOT NULL,
			"OrderData2"    Int           NOT NULL,

			CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(1,'One',1,1),
(2,'One',1,10),
(3,'One',2,2),
(4,'One',3,3),
(5,'One',4,4),
(6,'One',5,5),
(10,'Two',1,1),
(20,'Two',1,10),
(30,'Two',2,2),
(40,'Two',3,3),
(50,'Two',4,4),
(60,'Two',5,5),
(100,'Three',1,1),
(200,'Three',1,10),
(300,'Three',2,2),
(400,'Three',3,3),
(500,'Three',4,4),
(600,'Three',5,5)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0

SELECT
	"t2"."DuplicateData"
FROM
	(
		SELECT
			"t1"."DuplicateData",
			ROW_NUMBER() OVER () as RN
		FROM
			(
				SELECT DISTINCT
					"x"."DuplicateData"
				FROM
					"OrderByDistinctData" "x"
			) "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"g_1"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY MAX(Mod("g_1"."OrderData1", 3))) as RN
		FROM
			"OrderByDistinctData" "g_1"
		GROUP BY
			"g_1"."DuplicateData"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
END

