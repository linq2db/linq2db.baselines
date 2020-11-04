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

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(1,NULL),
(2,'A'),
(3,'D')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c2",
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "c1",
			CASE WHEN "selectParam"."TradingStatus" = 'D' THEN 1 ELSE 0 END as "c2"
		FROM
			"Issue913Test" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1",
	"t1"."c2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
END

