﻿BeforeExecute
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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PLUTO'

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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PIPPO'

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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PLUTO'

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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'BOLTO'

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
	"t2".RN > 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
	"t2".RN > 4

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
END

