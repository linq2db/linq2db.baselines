BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4469Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4469Table"
		(
			"Integer" Int            NOT NULL,
			"Decimal" Decimal(10, 5) NOT NULL,
			"Double"  Float          NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Integer Integer(4) -- Int32
SET     @Integer = 100
DECLARE @Decimal (3, 0) -- Decimal
SET     @Decimal = 100
DECLARE @Double Double(8)
SET     @Double = 100

INSERT INTO "Issue4469Table"
(
	"Integer",
	"Decimal",
	"Double"
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param Integer(4) -- Int32
SET     @param = 33
DECLARE @param_1 (2, 0) -- Decimal
SET     @param_1 = 33
DECLARE @param_2 Double(8)
SET     @param_2 = 33

SELECT
	CAST("v"."Integer" AS Float) / CAST(@param AS Int),
	CAST("v"."Decimal" AS Float) / CAST(@param_1 AS Decimal(10, 5)),
	"v"."Double" / CAST(@param_2 AS Float)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4469Table"';
END

