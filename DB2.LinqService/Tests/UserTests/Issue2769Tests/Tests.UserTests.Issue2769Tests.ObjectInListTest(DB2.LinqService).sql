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
			"Id"        Int NOT NULL,
			"NullValue" Int     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @default Integer(4) -- Int32
SET     @default = 0

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND Coalesce("a"."NullValue", @default) = 0 OR "a"."Id" = 1 AND Coalesce("a"."NullValue", @default) = 1 OR "a"."Id" = 2 AND Coalesce("a"."NullValue", @default) = 2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END

