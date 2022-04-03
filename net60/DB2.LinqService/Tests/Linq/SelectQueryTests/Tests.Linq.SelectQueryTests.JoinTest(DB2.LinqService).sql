BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 100

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	"t"."Value",
	"s"."Key_1",
	"s"."SecondValue"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "Key_1",
				3 as "SecondValue"
			FROM SYSIBM.SYSDUMMY1
		) "s" ON "s"."Key_1" = "t"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END

