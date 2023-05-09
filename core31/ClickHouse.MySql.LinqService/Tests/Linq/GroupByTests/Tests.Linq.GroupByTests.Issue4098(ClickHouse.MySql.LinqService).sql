﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Transaction

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Transaction
(
	InvestorId    Nullable(String),
	SecurityClass String,
	Units         Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	toInt32(100)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	toInt32(200)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	toInt32(300)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	toInt32(400)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvestorPayment

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InvestorPayment
(
	Id         Int32,
	InvestorId String,
	NetPayment Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InvestorPayment
(
	Id,
	InvestorId,
	NetPayment
)
VALUES
(
	toInt32(1),
	'inv1',
	toInt32(100)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InvestorPayment
(
	Id,
	InvestorId,
	NetPayment
)
VALUES
(
	toInt32(2),
	'inv2',
	toInt32(200)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PaymentEvent

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PaymentEvent
(
	Id            Int32,
	Description   Nullable(String),
	SecurityClass String
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PaymentEvent
(
	Id,
	Description,
	SecurityClass
)
VALUES
(
	toInt32(1),
	'one',
	'test'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PaymentEvent
(
	Id,
	Description,
	SecurityClass
)
VALUES
(
	toInt32(2),
	'two',
	'test'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvestorPaymentDetail

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InvestorPaymentDetail
(
	InvestorId    Nullable(String),
	CalculationId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InvestorPaymentDetail
(
	InvestorId,
	CalculationId
)
VALUES
(
	'inv1',
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InvestorPaymentDetail
(
	InvestorId,
	CalculationId
)
VALUES
(
	'inv2',
	toInt32(2)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PaymentCalculation

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PaymentCalculation
(
	Id      Int32,
	EventId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PaymentCalculation
(
	Id,
	EventId
)
VALUES
(
	toInt32(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PaymentCalculation
(
	Id,
	EventId
)
VALUES
(
	toInt32(2),
	toInt32(2)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	ip.InvestorId,
	t1.Units,
	sumOrNull(ip.NetPayment)
FROM
	PaymentEvent pe
		INNER JOIN InvestorPayment ip ON pe.Id = ip.Id
		INNER JOIN InvestorPaymentDetail ipd ON ip.InvestorId = ipd.InvestorId
		INNER JOIN PaymentCalculation pc ON ipd.CalculationId = pc.Id AND pe.Id = pc.EventId
		INNER JOIN (
			SELECT
				b.InvestorId as InvestorId,
				b.SecurityClass as SecurityClass,
				sumOrNull(b.Units) as Units
			FROM
				Transaction b
			GROUP BY
				b.SecurityClass,
				b.InvestorId
		) t1 ON ip.InvestorId = t1.InvestorId AND pe.SecurityClass = t1.SecurityClass
GROUP BY
	ip.InvestorId,
	t1.Units

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PaymentCalculation

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvestorPaymentDetail

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PaymentEvent

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InvestorPayment

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Transaction

