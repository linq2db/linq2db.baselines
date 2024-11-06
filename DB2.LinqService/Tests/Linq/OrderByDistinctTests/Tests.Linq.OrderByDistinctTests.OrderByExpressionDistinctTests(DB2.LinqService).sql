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
SET     @Id = 2
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 3
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 4
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 5
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 6
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 5

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
SET     @Id = 20
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 30
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 40
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 50
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 60
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 5

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 200
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 300
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 400
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 500
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 600
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 5

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
GROUP BY
	"x"."DuplicateData"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
END

