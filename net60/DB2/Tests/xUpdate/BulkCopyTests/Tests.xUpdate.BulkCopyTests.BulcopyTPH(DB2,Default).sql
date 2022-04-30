BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TPHTable"
(
	"Id"            Int          NOT NULL,
	"Discriminator" Int          NOT NULL,
	"Value1"        NVarChar(50)     NULL,
	"Value2"        NVarChar(50)     NULL,
	"NullableBool"  VarChar(1)       NULL,
	"Value3"        NVarChar(50)     NULL,

	CONSTRAINT "PK_TPHTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value1",
	"Value2",
	"NullableBool",
	"Value3"
)
VALUES
(1,1,'Str1',NULL,NULL,NULL),
(2,2,NULL,'Str2',NULL,NULL),
(3,3,NULL,NULL,'Y','Str3')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Discriminator",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."NullableBool",
	"t1"."Value3"
FROM
	"TPHTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."NullableBool",
	"x"."Value3"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."NullableBool",
	"x"."Value3"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 2
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."NullableBool",
	"x"."Value3"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 3
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."NullableBool",
	"x"."Value3"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value1" = 'Str1'
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."NullableBool",
	"x"."Value3"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value2" = 'Str2'
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Discriminator",
	"x"."Value1",
	"x"."Value2",
	"x"."NullableBool",
	"x"."Value3"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value3" = 'Str3'
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TPHTable"';
END

