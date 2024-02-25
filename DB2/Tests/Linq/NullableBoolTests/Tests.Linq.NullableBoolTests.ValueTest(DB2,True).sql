﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NullableBoolClass"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "NullableBoolClass"
		(
			"Value" smallint     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value SmallInt(4) -- Int16
SET     @value = 1

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value SmallInt(4) -- Int16
SET     @value = 1

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = @value

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value SmallInt(4) -- Int16
SET     @value = 1

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	("t"."Value" <> @value OR "t"."Value" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value SmallInt(4) -- Int16
SET     @value = 1

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> @value

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NullableBoolClass"';
END

