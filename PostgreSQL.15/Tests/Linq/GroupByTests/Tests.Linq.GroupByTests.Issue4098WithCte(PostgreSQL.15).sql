BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Transaction"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Transaction"
(
	"InvestorId"    text     NULL,
	"SecurityClass" text NOT NULL,
	"Units"         Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InvestorPayment"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "InvestorPayment"
(
	"Id"         Int  NOT NULL,
	"InvestorId" text NOT NULL,
	"NetPayment" Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PaymentEvent"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "PaymentEvent"
(
	"Id"            Int  NOT NULL,
	"Description"   text     NULL,
	"SecurityClass" text NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InvestorPaymentDetail"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "InvestorPaymentDetail"
(
	"InvestorId"    text     NULL,
	"CalculationId" Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PaymentCalculation"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "PaymentCalculation"
(
	"Id"      Int NOT NULL,
	"EventId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("InvestorId", "SecurityClass", "Units")
AS
(
	SELECT
		t1."InvestorId",
		t1."SecurityClass",
		Sum(t1."Units")
	FROM
		"Transaction" t1
	GROUP BY
		t1."SecurityClass",
		t1."InvestorId"
)
SELECT
	ip."InvestorId",
	b."Units",
	Sum(ip."NetPayment")
FROM
	"PaymentEvent" pe
		INNER JOIN "InvestorPayment" ip ON pe."Id" = ip."Id"
		INNER JOIN "InvestorPaymentDetail" ipd ON ip."InvestorId" = ipd."InvestorId"
		INNER JOIN "PaymentCalculation" pc ON ipd."CalculationId" = pc."Id" AND pe."Id" = pc."EventId"
		INNER JOIN "CTE_1" b ON ip."InvestorId" = b."InvestorId" AND pe."SecurityClass" = b."SecurityClass"
GROUP BY
	ip."InvestorId",
	b."Units"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PaymentCalculation"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InvestorPaymentDetail"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PaymentEvent"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InvestorPayment"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Transaction"

