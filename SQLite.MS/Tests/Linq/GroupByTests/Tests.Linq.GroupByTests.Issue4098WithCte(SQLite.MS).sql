BeforeExecute
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

WITH [CTE_1] ([InvestorId], [SecurityClass], [Units])
AS
(
	SELECT
		[g_1].[InvestorId],
		[g_1].[SecurityClass],
		SUM([g_1].[Units])
	FROM
		[Transaction] [g_1]
	GROUP BY
		[g_1].[SecurityClass],
		[g_1].[InvestorId]
)
SELECT
	[ip].[InvestorId],
	[b].[Units],
	SUM([ip].[NetPayment])
FROM
	[PaymentEvent] [g_2]
		INNER JOIN [InvestorPayment] [ip] ON [g_2].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON [ip].[InvestorId] = [ipd].[InvestorId]
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [g_2].[Id] = [pc].[EventId]
		INNER JOIN [CTE_1] [b] ON [ip].[InvestorId] = [b].[InvestorId] AND [g_2].[SecurityClass] = [b].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[b].[Units]

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

