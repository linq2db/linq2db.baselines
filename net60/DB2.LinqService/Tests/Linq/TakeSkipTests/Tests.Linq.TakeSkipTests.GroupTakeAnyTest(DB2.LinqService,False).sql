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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PIPPO'

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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'BOLTO'

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
	CASE
		WHEN EXISTS(
			SELECT
				"t1"."Value"
			FROM
				"TakeSkipClass" "t1"
			GROUP BY
				"t1"."Value"
			HAVING
				Count(*) > 1
			FETCH FIRST 1 ROWS ONLY
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
END

