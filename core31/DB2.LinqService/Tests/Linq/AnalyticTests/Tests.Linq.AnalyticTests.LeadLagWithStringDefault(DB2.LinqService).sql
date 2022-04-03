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
DECLARE @ProcessID Integer(4) -- Int32
SET     @ProcessID = 1
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'One'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ProcessID Integer(4) -- Int32
SET     @ProcessID = 2
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LAG("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
END

