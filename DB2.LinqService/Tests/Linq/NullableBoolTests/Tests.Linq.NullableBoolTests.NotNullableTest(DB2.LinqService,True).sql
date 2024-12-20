BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NotNullableBoolClass"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "NotNullableBoolClass"
		(
			"Value" smallint NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value SmallInt(4) -- Int16
SET     @Value = 1

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value SmallInt(4) -- Int16
SET     @Value = 0

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	NOT "t"."Value"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NotNullableBoolClass"';
END

