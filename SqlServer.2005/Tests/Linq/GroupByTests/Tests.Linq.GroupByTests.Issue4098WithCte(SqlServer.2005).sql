BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Transaction]', N'U') IS NOT NULL)
	DROP TABLE [Transaction]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Transaction]', N'U') IS NULL)
	CREATE TABLE [Transaction]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000) NOT NULL,
		[Units]         Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
SELECT N'inv1',N'test',100 UNION ALL
SELECT N'inv1',N'test',200 UNION ALL
SELECT N'inv2',N'test',300 UNION ALL
SELECT N'inv2',N'test',400

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NULL)
	CREATE TABLE [InvestorPayment]
	(
		[Id]         Int            NOT NULL,
		[InvestorId] NVarChar(4000) NOT NULL,
		[NetPayment] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
SELECT 1,N'inv1',100 UNION ALL
SELECT 2,N'inv2',200

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NULL)
	CREATE TABLE [PaymentEvent]
	(
		[Id]            Int            NOT NULL,
		[Description]   NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
SELECT 1,N'one',N'test' UNION ALL
SELECT 2,N'two',N'test'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NULL)
	CREATE TABLE [InvestorPaymentDetail]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[CalculationId] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
SELECT N'inv1',1 UNION ALL
SELECT N'inv2',2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NULL)
	CREATE TABLE [PaymentCalculation]
	(
		[Id]      Int NOT NULL,
		[EventId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- SqlServer.2005

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
		INNER JOIN [CTE_1] [b] ON [ip].[InvestorId] = [b].[InvestorId] AND [p].[SecurityClass] = [b].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[b].[Units]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Transaction]', N'U') IS NOT NULL)
	DROP TABLE [Transaction]

