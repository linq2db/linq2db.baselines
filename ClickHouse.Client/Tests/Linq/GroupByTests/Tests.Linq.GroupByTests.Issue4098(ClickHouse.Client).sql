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
('inv1','test',100),
('inv1','test',200),
('inv2','test',300),
('inv2','test',400)

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
(1,'inv1',100),
(2,'inv2',200)

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
(1,'one','test'),
(2,'two','test')

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
('inv1',1),
('inv2',2)

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
(1,1),
(2,2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	ip.InvestorId,
	t1.Units,
	sum(ip.NetPayment)
FROM
	PaymentEvent g_1
		INNER JOIN InvestorPayment ip ON g_1.Id = ip.Id
		INNER JOIN InvestorPaymentDetail ipd ON ip.InvestorId = ipd.InvestorId
		INNER JOIN PaymentCalculation pc ON ipd.CalculationId = pc.Id AND g_1.Id = pc.EventId
		INNER JOIN (
			SELECT
				sum(b.Units) as Units,
				b.InvestorId as InvestorId,
				b.SecurityClass as SecurityClass
			FROM
				Transaction b
			GROUP BY
				b.SecurityClass,
				b.InvestorId
		) t1 ON ip.InvestorId = t1.InvestorId AND g_1.SecurityClass = t1.SecurityClass
GROUP BY
	ip.InvestorId,
	t1.Units

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

