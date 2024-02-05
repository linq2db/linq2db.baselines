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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 100
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

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
			ROW_NUMBER() OVER (ORDER BY Min("x"."OrderData1")) as RN
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
			ROW_NUMBER() OVER (ORDER BY Max("x"."OrderData1") DESC) as RN
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
			ROW_NUMBER() OVER (ORDER BY Min("x"."OrderData1"), Min("x"."OrderData2")) as RN
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
			ROW_NUMBER() OVER (ORDER BY Min("x"."OrderData1"), Max("x"."OrderData2") DESC) as RN
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
			ROW_NUMBER() OVER (ORDER BY Max("x"."OrderData1") DESC, Max("x"."OrderData2") DESC) as RN
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
			ROW_NUMBER() OVER (ORDER BY Min("x"."OrderData1"), Max("x"."OrderData2") DESC) as RN
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

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
END

