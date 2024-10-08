BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Transaction

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Transaction
(
	InvestorId    Nullable(String),
	SecurityClass String,
	Units         Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transaction
(
	InvestorId,
	SecurityClass,
	Units
)
VALUES
(
	'inv1',
	'test',
	100
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transaction
(
	InvestorId,
	SecurityClass,
	Units
)
VALUES
(
	'inv1',
	'test',
	200
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transaction
(
	InvestorId,
	SecurityClass,
	Units
)
VALUES
(
	'inv2',
	'test',
	300
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transaction
(
	InvestorId,
	SecurityClass,
	Units
)
VALUES
(
	'inv2',
	'test',
	400
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvestorPayment

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InvestorPayment
(
	Id         Int32,
	InvestorId String,
	NetPayment Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InvestorPayment
(
	Id,
	InvestorId,
	NetPayment
)
VALUES
(
	1,
	'inv1',
	100
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InvestorPayment
(
	Id,
	InvestorId,
	NetPayment
)
VALUES
(
	2,
	'inv2',
	200
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PaymentEvent

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS PaymentEvent
(
	Id            Int32,
	Description   Nullable(String),
	SecurityClass String
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PaymentEvent
(
	Id,
	Description,
	SecurityClass
)
VALUES
(
	1,
	'one',
	'test'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PaymentEvent
(
	Id,
	Description,
	SecurityClass
)
VALUES
(
	2,
	'two',
	'test'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvestorPaymentDetail

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InvestorPaymentDetail
(
	InvestorId    Nullable(String),
	CalculationId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InvestorPaymentDetail
(
	InvestorId,
	CalculationId
)
VALUES
(
	'inv1',
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InvestorPaymentDetail
(
	InvestorId,
	CalculationId
)
VALUES
(
	'inv2',
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PaymentCalculation

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS PaymentCalculation
(
	Id      Int32,
	EventId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PaymentCalculation
(
	Id,
	EventId
)
VALUES
(
	1,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PaymentCalculation
(
	Id,
	EventId
)
VALUES
(
	2,
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE_1 AS
(
	SELECT
		g_1.InvestorId,
		g_1.SecurityClass,
		sum(g_1.Units) as Units
	FROM
		Transaction g_1
	GROUP BY
		g_1.SecurityClass,
		g_1.InvestorId
)
SELECT
	ip.InvestorId,
	b.Units,
	sum(ip.NetPayment)
FROM
	PaymentEvent g_2
		INNER JOIN InvestorPayment ip ON g_2.Id = ip.Id
		INNER JOIN InvestorPaymentDetail ipd ON ip.InvestorId = ipd.InvestorId
		INNER JOIN PaymentCalculation pc ON ipd.CalculationId = pc.Id AND g_2.Id = pc.EventId
		INNER JOIN CTE_1 b ON ip.InvestorId = b.InvestorId AND g_2.SecurityClass = b.SecurityClass
GROUP BY
	ip.InvestorId,
	b.Units

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PaymentCalculation

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvestorPaymentDetail

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PaymentEvent

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InvestorPayment

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Transaction

