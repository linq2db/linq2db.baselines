BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transaction')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Transaction"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
SELECT CAST('inv1' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('test' AS VarChar(255) CHARACTER SET UNICODE_FSS),100 FROM rdb$database UNION ALL
SELECT 'inv1','test',200 FROM rdb$database UNION ALL
SELECT 'inv2','test',300 FROM rdb$database UNION ALL
SELECT 'inv2','test',400 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPayment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPayment"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
SELECT 1,CAST('inv1' AS VarChar(255) CHARACTER SET UNICODE_FSS),100 FROM rdb$database UNION ALL
SELECT 2,'inv2',200 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentEvent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentEvent"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
SELECT 1,CAST('one' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('test' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'two','test' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPaymentDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPaymentDetail"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
SELECT CAST('inv1' AS VarChar(255) CHARACTER SET UNICODE_FSS),1 FROM rdb$database UNION ALL
SELECT 'inv2',2 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentCalculation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentCalculation"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

WITH CTE_1 ("InvestorId", "SecurityClass", "Units")
AS
(
	SELECT
		"g_1"."InvestorId",
		"g_1"."SecurityClass",
		SUM("g_1"."Units")
	FROM
		"Transaction" "g_1"
	GROUP BY
		"g_1"."SecurityClass",
		"g_1"."InvestorId"
)
SELECT
	"ip"."InvestorId",
	"b"."Units",
	SUM("ip"."NetPayment")
FROM
	"PaymentEvent" "p"
		INNER JOIN "InvestorPayment" "ip" ON "p"."Id" = "ip"."Id"
		INNER JOIN "InvestorPaymentDetail" "ipd" ON "ip"."InvestorId" = "ipd"."InvestorId"
		INNER JOIN "PaymentCalculation" "pc" ON "ipd"."CalculationId" = "pc"."Id" AND "p"."Id" = "pc"."EventId"
		INNER JOIN CTE_1 "b" ON "ip"."InvestorId" = "b"."InvestorId" AND "b"."InvestorId" IS NOT NULL AND "p"."SecurityClass" = "b"."SecurityClass"
GROUP BY
	"ip"."InvestorId",
	"b"."Units"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentCalculation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentCalculation"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPaymentDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPaymentDetail"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PaymentEvent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PaymentEvent"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InvestorPayment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InvestorPayment"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transaction')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Transaction"';
END

