BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Transaction"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Transaction"
(
	"InvestorId"    text     NULL,
	"SecurityClass" text NOT NULL,
	"Units"         Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
('inv1','test',100),
('inv1','test',200),
('inv2','test',300),
('inv2','test',400)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InvestorPayment"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "InvestorPayment"
(
	"Id"         Int  NOT NULL,
	"InvestorId" text NOT NULL,
	"NetPayment" Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
VALUES
(1,'inv1',100),
(2,'inv2',200)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "PaymentEvent"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "PaymentEvent"
(
	"Id"            Int  NOT NULL,
	"Description"   text     NULL,
	"SecurityClass" text NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(1,'one','test'),
(2,'two','test')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InvestorPaymentDetail"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "InvestorPaymentDetail"
(
	"InvestorId"    text     NULL,
	"CalculationId" Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "PaymentCalculation"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "PaymentCalculation"
(
	"Id"      Int NOT NULL,
	"EventId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" ("InvestorId", "SecurityClass", "Units")
AS
(
	SELECT
		g_1."InvestorId",
		g_1."SecurityClass",
		SUM(g_1."Units")
	FROM
		"Transaction" g_1
	GROUP BY
		g_1."SecurityClass",
		g_1."InvestorId"
)
SELECT
	ip."InvestorId",
	b."Units",
	SUM(ip."NetPayment")
FROM
	"PaymentEvent" p
		INNER JOIN "InvestorPayment" ip ON p."Id" = ip."Id"
		INNER JOIN "InvestorPaymentDetail" ipd ON ip."InvestorId" = ipd."InvestorId"
		INNER JOIN "PaymentCalculation" pc ON ipd."CalculationId" = pc."Id" AND p."Id" = pc."EventId"
		INNER JOIN "CTE_1" b ON ip."InvestorId" = b."InvestorId" AND p."SecurityClass" = b."SecurityClass"
GROUP BY
	ip."InvestorId",
	b."Units"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "PaymentCalculation"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InvestorPaymentDetail"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "PaymentEvent"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InvestorPayment"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Transaction"

