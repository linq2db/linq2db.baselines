BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Transaction]
(
	[InvestorId]    NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL,
	[Units]         INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvestorPayment]
(
	[Id]         INTEGER       NOT NULL,
	[InvestorId] NVarChar(255) NOT NULL,
	[NetPayment] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PaymentEvent]
(
	[Id]            INTEGER       NOT NULL,
	[Description]   NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvestorPaymentDetail]
(
	[InvestorId]    NVarChar(255)     NULL,
	[CalculationId] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PaymentCalculation]
(
	[Id]      INTEGER NOT NULL,
	[EventId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- SQLite.Classic SQLite

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
	[PaymentEvent] [p]
		INNER JOIN [InvestorPayment] [ip] ON [p].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON [ip].[InvestorId] = [ipd].[InvestorId]
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [p].[Id] = [pc].[EventId]
		INNER JOIN [CTE_1] [b] ON [ip].[InvestorId] = [b].[InvestorId] AND [b].[InvestorId] IS NOT NULL AND [p].[SecurityClass] = [b].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[b].[Units]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transaction]

