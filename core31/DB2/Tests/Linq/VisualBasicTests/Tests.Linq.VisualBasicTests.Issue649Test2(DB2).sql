BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "activity649"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "activity649"
		(
			"activityid" Int       GENERATED ALWAYS AS IDENTITY NOT NULL,
			"personid"   Int                                    NOT NULL,
			"added"      timestamp                              NOT NULL,

			CONSTRAINT "PK_activity649" PRIMARY KEY ("activityid")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "person649"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "person649"
		(
			"personid"   Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
			"personname" NVarChar(255)                              NOT NULL,

			CONSTRAINT "PK_person649" PRIMARY KEY ("personid")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @added Timestamp(20) -- DateTime
SET     @added = '2017-01-01-00.00.00.000000'

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	Max("p"."added")
FROM
	"activity649" "p"
		INNER JOIN "person649" "a_Person" ON "p"."personid" = "a_Person"."personid"
WHERE
	"p"."added" >= @added
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "person649"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "activity649"';
END

