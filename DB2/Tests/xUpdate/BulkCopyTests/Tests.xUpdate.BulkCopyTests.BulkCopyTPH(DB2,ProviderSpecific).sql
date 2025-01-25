BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TPHTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TPHTable"
		(
			"Id"            Int          NOT NULL,
			"Discriminator" Int          NOT NULL,
			"Value1"        NVarChar(50)     NULL,
			"Value2"        NVarChar(50)     NULL,
			"Value3"        NVarChar(50)     NULL,
			"NullableBool"  VarChar(1)       NULL,

			CONSTRAINT "PK_TPHTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
INSERT BULK "TPHTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Discriminator",
	"t1"."Id",
	"t1"."Value3",
	"t1"."NullableBool",
	"t1"."Value2",
	"t1"."Value1"
FROM
	"TPHTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 2
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 3
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value1" = 'Str1'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value2" = 'Str2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value3" = 'Str3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TPHTable"';
END

