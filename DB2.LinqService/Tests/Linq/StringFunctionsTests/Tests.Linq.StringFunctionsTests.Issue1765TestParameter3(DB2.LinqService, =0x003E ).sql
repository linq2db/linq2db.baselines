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
			"Id"     Int          NOT NULL,
			"Value1" NVarChar(50)     NULL,
			"Value2" NVarChar(50)     NULL,
			"Value3" VarChar(50)      NULL,
			"Value4" NVarChar(50)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = 'V1'
DECLARE @Value2 VarChar(2) -- String
SET     @Value2 = 'V2'
DECLARE @Value3 VarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- String
SET     @Value4 = 'V4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar(2) -- String
SET     @Value2 = 'Z2'
DECLARE @Value3 VarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar -- String
SET     @Value4 = NULL

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = 'Z1'
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Value3 VarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- String
SET     @Value4 = 'Z4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @separator VarChar(4) -- String
SET     @separator = ' => '

SELECT
	LISTAGG("g_1"."Value4", CAST(@separator AS NVarChar(4))) WITHIN GROUP (ORDER BY "g_1"."Value3" DESC, "g_1"."Value4")
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value4"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END

