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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value1 VarChar(4) -- String
SET     @Value1 = 'Str1'
DECLARE @Discriminator Integer(4) -- Int32
SET     @Discriminator = 1

INSERT INTO "TPHTable"
(
	"Id",
	"Value1",
	"Discriminator"
)
VALUES
(
	@Id,
	@Value1,
	@Discriminator
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value2 VarChar(4) -- String
SET     @Value2 = 'Str2'
DECLARE @Discriminator Integer(4) -- Int32
SET     @Discriminator = 2

INSERT INTO "TPHTable"
(
	"Id",
	"Value2",
	"Discriminator"
)
VALUES
(
	@Id,
	@Value2,
	@Discriminator
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @NullableBool VarChar(1) -- String
SET     @NullableBool = 'Y'
DECLARE @Value3 VarChar(4) -- String
SET     @Value3 = 'Str3'
DECLARE @Discriminator Integer(4) -- Int32
SET     @Discriminator = 3

INSERT INTO "TPHTable"
(
	"Id",
	"NullableBool",
	"Value3",
	"Discriminator"
)
VALUES
(
	@Id,
	@NullableBool,
	@Value3,
	@Discriminator
)

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

