BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Table1"
		(
			"Field1" Int      GENERATED ALWAYS AS IDENTITY NOT NULL,
			"Foeld2" NChar(1)                                  NULL,

			CONSTRAINT "PK_Table1" PRIMARY KEY ("Field1")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"current_1"."Field1",
	"previous"."Field1"
FROM
	"Table1" "current_1",
	"Table1" "previous"
WHERE
	"current_1"."Foeld2" = "previous"."Foeld2" AND "current_1"."Foeld2" IS NOT NULL AND "previous"."Foeld2" IS NOT NULL OR
	"current_1"."Foeld2" IS NULL AND "previous"."Foeld2" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
END

