BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4460Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4460Table"
		(
			"Id"      Int           NOT NULL,
			"Code"    NVarChar(255)     NULL,
			"Name"    NVarChar(255)     NULL,
			"Surname" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(1,'GrandChild','Tom','Black')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Name",
	"t1"."Surname"
FROM
	"Issue4460Table" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4460Table"';
END

