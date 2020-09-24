BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "OrderByDistinctData"
(
	"Id"            Int           NOT NULL,
	"DuplicateData" NVarChar(255)     NULL,
	"OrderData1"    Int           NOT NULL,
	"OrderData2"    Int           NOT NULL,

	CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
)

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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY Max("x"."OrderData1")) as RN
		FROM
			"OrderByDistinctData" "x"
		GROUP BY
			"x"."DuplicateData"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY "x"."OrderData1") as RN
		FROM
			"OrderByDistinctData" "x"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY Min("x"."OrderData1") DESC) as RN
		FROM
			"OrderByDistinctData" "x"
		GROUP BY
			"x"."DuplicateData"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY "x"."OrderData1" DESC) as RN
		FROM
			"OrderByDistinctData" "x"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY Max("x"."OrderData1"), Max("x"."OrderData2")) as RN
		FROM
			"OrderByDistinctData" "x"
		GROUP BY
			"x"."DuplicateData"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY "x"."OrderData1", "x"."OrderData2") as RN
		FROM
			"OrderByDistinctData" "x"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY Max("x"."OrderData1"), Min("x"."OrderData2") DESC) as RN
		FROM
			"OrderByDistinctData" "x"
		GROUP BY
			"x"."DuplicateData"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY "x"."OrderData1", "x"."OrderData2" DESC) as RN
		FROM
			"OrderByDistinctData" "x"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY Min("x"."OrderData1") DESC, Min("x"."OrderData2") DESC) as RN
		FROM
			"OrderByDistinctData" "x"
		GROUP BY
			"x"."DuplicateData"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY "x"."OrderData1" DESC, "x"."OrderData2" DESC) as RN
		FROM
			"OrderByDistinctData" "x"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY Max("x"."OrderData1"), Min("x"."OrderData2") DESC) as RN
		FROM
			"OrderByDistinctData" "x"
		GROUP BY
			"x"."DuplicateData"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t1"."DuplicateData"
FROM
	(
		SELECT
			"x"."DuplicateData",
			ROW_NUMBER() OVER (ORDER BY "x"."OrderData1", "x"."OrderData2" DESC) as RN
		FROM
			"OrderByDistinctData" "x"
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "OrderByDistinctData"

