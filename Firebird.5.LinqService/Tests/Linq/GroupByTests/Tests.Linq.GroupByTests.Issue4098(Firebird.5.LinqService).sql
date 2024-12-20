﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transaction')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Transaction"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transaction')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Transaction"
			(
				"InvestorId"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"SecurityClass" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"Units"         Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPayment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPayment"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPayment')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InvestorPayment"
			(
				"Id"         Int                                    NOT NULL,
				"InvestorId" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"NetPayment" Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @NetPayment Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @NetPayment Integer -- Int32
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentEvent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentEvent"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentEvent')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PaymentEvent"
			(
				"Id"            Int                                    NOT NULL,
				"Description"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"SecurityClass" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPaymentDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPaymentDetail"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPaymentDetail')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InvestorPaymentDetail"
			(
				"InvestorId"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"CalculationId" Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @CalculationId Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @CalculationId Integer -- Int32
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentCalculation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentCalculation"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentCalculation')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PaymentCalculation"
			(
				"Id"      Int NOT NULL,
				"EventId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @EventId Integer -- Int32
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
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @EventId Integer -- Int32
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
-- Firebird.5 Firebird4

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
		) "t1" ON "ip"."InvestorId" = "t1"."InvestorId" AND "p"."SecurityClass" = "t1"."SecurityClass"
GROUP BY
	"ip"."InvestorId",
	"t1"."TotalUnits"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentCalculation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentCalculation"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPaymentDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPaymentDetail"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentEvent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentEvent"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPayment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPayment"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transaction')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Transaction"';
END

