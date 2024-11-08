BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Transaction]
(
	[InvestorId]    NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL,
	[Units]         INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvestorPayment]
(
	[Id]         INTEGER       NOT NULL,
	[InvestorId] NVarChar(255) NOT NULL,
	[NetPayment] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PaymentEvent]
(
	[Id]            INTEGER       NOT NULL,
	[Description]   NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvestorPaymentDetail]
(
	[InvestorId]    NVarChar(255)     NULL,
	[CalculationId] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PaymentCalculation]
(
	[Id]      INTEGER NOT NULL,
	[EventId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[ip].[InvestorId],
	[t1].[TotalUnits],
	SUM([ip].[NetPayment])
FROM
	[PaymentEvent] [p]
		INNER JOIN [InvestorPayment] [ip] ON [p].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON [ip].[InvestorId] = [ipd].[InvestorId]
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [p].[Id] = [pc].[EventId]
		INNER JOIN (
			SELECT
				SUM([b].[Units]) as [TotalUnits],
				[b].[InvestorId],
				[b].[SecurityClass]
			FROM
				[Transaction] [b]
			GROUP BY
				[b].[SecurityClass],
				[b].[InvestorId]
		) [t1] ON [ip].[InvestorId] = [t1].[InvestorId] AND [p].[SecurityClass] = [t1].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[t1].[TotalUnits]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transaction]

