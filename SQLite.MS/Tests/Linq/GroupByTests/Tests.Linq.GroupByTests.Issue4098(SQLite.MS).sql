﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Transaction]
(
	[InvestorId]    NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL,
	[Units]         INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
VALUES
('inv1','test',100),
('inv1','test',200),
('inv2','test',300),
('inv2','test',400)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InvestorPayment]
(
	[Id]         INTEGER       NOT NULL,
	[InvestorId] NVarChar(255) NOT NULL,
	[NetPayment] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
VALUES
(1,'inv1',100),
(2,'inv2',200)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PaymentEvent]
(
	[Id]            INTEGER       NOT NULL,
	[Description]   NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
VALUES
(1,'one','test'),
(2,'two','test')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InvestorPaymentDetail]
(
	[InvestorId]    NVarChar(255)     NULL,
	[CalculationId] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PaymentCalculation]
(
	[Id]      INTEGER NOT NULL,
	[EventId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[ip].[InvestorId],
	[t1].[Units],
	Sum([ip].[NetPayment])
FROM
	[PaymentEvent] [g_1]
		INNER JOIN [InvestorPayment] [ip] ON [g_1].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON [ip].[InvestorId] = [ipd].[InvestorId]
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [g_1].[Id] = [pc].[EventId]
		INNER JOIN (
			SELECT
				[b].[InvestorId],
				[b].[SecurityClass],
				Sum([b].[Units]) as [Units]
			FROM
				[Transaction] [b]
			GROUP BY
				[b].[SecurityClass],
				[b].[InvestorId]
		) [t1] ON ([ip].[InvestorId] = [t1].[InvestorId]) AND [g_1].[SecurityClass] = [t1].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[t1].[Units]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Transaction]

