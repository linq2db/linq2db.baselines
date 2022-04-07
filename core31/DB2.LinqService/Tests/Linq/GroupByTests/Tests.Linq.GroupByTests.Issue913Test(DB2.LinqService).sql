BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue913Test"
		(
			"InstrumentID"  Int      NOT NULL,
			"TradingStatus" NChar(1)     NULL,

			CONSTRAINT "PK_Issue913Test" PRIMARY KEY ("InstrumentID")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentID Integer(4) -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus Char -- StringFixedLength
SET     @TradingStatus = NULL

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentID Integer(4) -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus Char(1) -- StringFixedLength
SET     @TradingStatus = 'A'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InstrumentID Integer(4) -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus Char(1) -- StringFixedLength
SET     @TradingStatus = 'D'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c1",
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "Key_1",
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "c1"
		FROM
			"Issue913Test" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1",
	"t1"."c1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
END

