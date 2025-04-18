﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "AggregationData"
		(
			"GroupId"   Int   NOT NULL,
			"DataValue" Float     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 3

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 1

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 5

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 6

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 8

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 9

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 11

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 7

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 13

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 18

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AggregationData"';
END

