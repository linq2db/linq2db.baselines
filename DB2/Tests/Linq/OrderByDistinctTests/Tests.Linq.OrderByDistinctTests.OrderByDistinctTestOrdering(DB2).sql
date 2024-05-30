BeforeExecute
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
(10,'Two',1,1),
(100,'Three',1,1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1" DESC,
	"x"."OrderData2" DESC
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1",
	"x"."OrderData2" DESC
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
END

