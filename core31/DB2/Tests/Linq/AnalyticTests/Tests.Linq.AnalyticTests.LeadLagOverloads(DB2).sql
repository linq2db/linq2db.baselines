BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1799Table3"
		(
			"ProcessID"   Int           NOT NULL,
			"ProcessName" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(1,'One'),
(2,'Two'),
(3,'Three'),
(4,'Four')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LEAD("p"."ProcessName", 2) OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LEAD("p"."ProcessName") OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LAG("p"."ProcessName", 2) OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LAG("p"."ProcessName") OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
END

