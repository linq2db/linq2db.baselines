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
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value2'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value3'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value4'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value5'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value6'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value7'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value8'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value9'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 4

SELECT
	"t2"."Value_1"
FROM
	(
		SELECT
			"t1"."Value" as "Value_1",
			ROW_NUMBER() OVER (ORDER BY "t1"."Value") as RN
		FROM
			"TakeSkipClass" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @skip_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
END

