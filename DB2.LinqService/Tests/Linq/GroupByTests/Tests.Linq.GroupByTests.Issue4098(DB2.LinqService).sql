BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Transaction"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Transaction"
		(
			"InvestorId"    NVarChar(255)     NULL,
			"SecurityClass" NVarChar(255) NOT NULL,
			"Units"         Int           NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer(4) -- Int32
SET     @Units = 100

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer(4) -- Int32
SET     @Units = 200

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer(4) -- Int32
SET     @Units = 300

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer(4) -- Int32
SET     @Units = 400

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPayment"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InvestorPayment"
		(
			"Id"         Int           NOT NULL,
			"InvestorId" NVarChar(255) NOT NULL,
			"NetPayment" Int           NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @NetPayment Integer(4) -- Int32
SET     @NetPayment = 100

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
VALUES
(
	@Id,
	@InvestorId,
	@NetPayment
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @NetPayment Integer(4) -- Int32
SET     @NetPayment = 200

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
VALUES
(
	@Id,
	@InvestorId,
	@NetPayment
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentEvent"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "PaymentEvent"
		(
			"Id"            Int           NOT NULL,
			"Description"   NVarChar(255)     NULL,
			"SecurityClass" NVarChar(255) NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Description VarChar(3) -- String
SET     @Description = 'one'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	@Id,
	@Description,
	@SecurityClass
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Description VarChar(3) -- String
SET     @Description = 'two'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	@Id,
	@Description,
	@SecurityClass
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPaymentDetail"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InvestorPaymentDetail"
		(
			"InvestorId"    NVarChar(255)     NULL,
			"CalculationId" Int           NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @CalculationId Integer(4) -- Int32
SET     @CalculationId = 1

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
(
	@InvestorId,
	@CalculationId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @CalculationId Integer(4) -- Int32
SET     @CalculationId = 2

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
(
	@InvestorId,
	@CalculationId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentCalculation"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "PaymentCalculation"
		(
			"Id"      Int NOT NULL,
			"EventId" Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @EventId Integer(4) -- Int32
SET     @EventId = 1

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(
	@Id,
	@EventId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @EventId Integer(4) -- Int32
SET     @EventId = 2

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(
	@Id,
	@EventId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"ip"."InvestorId",
	"t1"."TotalUnits",
	SUM("ip"."NetPayment")
FROM
	"PaymentEvent" "p"
		INNER JOIN "InvestorPayment" "ip" ON "p"."Id" = "ip"."Id"
		INNER JOIN "InvestorPaymentDetail" "ipd" ON "ip"."InvestorId" = "ipd"."InvestorId"
		INNER JOIN "PaymentCalculation" "pc" ON "ipd"."CalculationId" = "pc"."Id" AND "p"."Id" = "pc"."EventId"
		INNER JOIN (
			SELECT
				SUM("b"."Units") as "TotalUnits",
				"b"."InvestorId",
				"b"."SecurityClass"
			FROM
				"Transaction" "b"
			GROUP BY
				"b"."SecurityClass",
				"b"."InvestorId"
		) "t1" ON "ip"."InvestorId" = "t1"."InvestorId" AND "t1"."InvestorId" IS NOT NULL AND "p"."SecurityClass" = "t1"."SecurityClass"
GROUP BY
	"ip"."InvestorId",
	"t1"."TotalUnits"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentCalculation"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPaymentDetail"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentEvent"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPayment"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Transaction"';
END

