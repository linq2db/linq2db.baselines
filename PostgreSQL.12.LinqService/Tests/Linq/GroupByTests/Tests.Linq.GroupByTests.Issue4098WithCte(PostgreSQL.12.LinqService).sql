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
DECLARE @InvestorId Text(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass Text(4) -- String
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
	:InvestorId,
	:SecurityClass,
	:Units
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @InvestorId Text(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass Text(4) -- String
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
	:InvestorId,
	:SecurityClass,
	:Units
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @InvestorId Text(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass Text(4) -- String
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
	:InvestorId,
	:SecurityClass,
	:Units
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @InvestorId Text(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass Text(4) -- String
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
	:InvestorId,
	:SecurityClass,
	:Units
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InvestorId Text(4) -- String
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
	:Id,
	:InvestorId,
	:NetPayment
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @InvestorId Text(4) -- String
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
	:Id,
	:InvestorId,
	:NetPayment
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Description Text(3) -- String
SET     @Description = 'one'
DECLARE @SecurityClass Text(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	:Id,
	:Description,
	:SecurityClass
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Description Text(3) -- String
SET     @Description = 'two'
DECLARE @SecurityClass Text(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	:Id,
	:Description,
	:SecurityClass
)

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
DECLARE @InvestorId Text(4) -- String
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
	:InvestorId,
	:CalculationId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @InvestorId Text(4) -- String
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
	:InvestorId,
	:CalculationId
)

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
	:Id,
	:EventId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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
	:Id,
	:EventId
)

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
	"PaymentEvent" g_2
		INNER JOIN "InvestorPayment" ip ON g_2."Id" = ip."Id"
		INNER JOIN "InvestorPaymentDetail" ipd ON ip."InvestorId" = ipd."InvestorId"
		INNER JOIN "PaymentCalculation" pc ON ipd."CalculationId" = pc."Id" AND g_2."Id" = pc."EventId"
		INNER JOIN "CTE_1" b ON ip."InvestorId" = b."InvestorId" AND g_2."SecurityClass" = b."SecurityClass"
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

