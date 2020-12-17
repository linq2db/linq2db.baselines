BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "SampleClass"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	"t"."Value",
	"s"."c1"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "c1"
			FROM SYSIBM.SYSDUMMY1
		) "s" ON "s"."c1" = "t"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END

