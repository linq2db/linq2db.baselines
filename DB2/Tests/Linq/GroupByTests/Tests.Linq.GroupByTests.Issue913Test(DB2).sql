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
	"g_2"."IsDelisted",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN "g_1"."TradingStatus" = 'D' THEN 1
				ELSE 0
			END as "IsDelisted"
		FROM
			"Issue913Test" "g_1"
	) "g_2"
GROUP BY
	"g_2"."IsDelisted"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
END

