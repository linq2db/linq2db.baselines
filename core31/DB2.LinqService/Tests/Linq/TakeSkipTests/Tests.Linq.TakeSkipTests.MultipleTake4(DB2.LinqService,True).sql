BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TakeSkipClass"
		(
			"Value" VarChar(10)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value1'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value2'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value3'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value4'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value5'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value6'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value7'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value8'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
END

