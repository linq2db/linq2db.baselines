﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Transaction]', N'U') IS NOT NULL)
	DROP TABLE [Transaction]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Transaction]', N'U') IS NULL)
	CREATE TABLE [Transaction]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000)     NULL,
		[Units]         Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NULL)
	CREATE TABLE [InvestorPayment]
	(
		[Id]         Int            NOT NULL,
		[InvestorId] NVarChar(4000)     NULL,
		[NetPayment] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
SELECT 1,N'inv1',100 UNION ALL
SELECT 2,N'inv2',200

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NULL)
	CREATE TABLE [PaymentEvent]
	(
		[Id]            Int            NOT NULL,
		[Description]   NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
SELECT 1,N'one',N'test' UNION ALL
SELECT 2,N'two',N'test'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NULL)
	CREATE TABLE [InvestorPaymentDetail]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[CalculationId] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
SELECT N'inv1',1 UNION ALL
SELECT N'inv2',2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NULL)
	CREATE TABLE [PaymentCalculation]
	(
		[Id]      Int NOT NULL,
		[EventId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

WITH [CTE_1] ([InvestorId], [SecurityClass], [Units])
AS
(
	SELECT
		[t1].[InvestorId],
		[t1].[SecurityClass],
		Sum([t1].[Units])
	FROM
		[Transaction] [t1]
	GROUP BY
		[t1].[SecurityClass],
		[t1].[InvestorId]
)
SELECT
	[ip].[InvestorId],
	[b].[Units],
	Sum([ip].[NetPayment])
FROM
	[PaymentEvent] [pe]
		INNER JOIN [InvestorPayment] [ip] ON [pe].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON ([ip].[InvestorId] = [ipd].[InvestorId] OR [ip].[InvestorId] IS NULL AND [ipd].[InvestorId] IS NULL)
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [pe].[Id] = [pc].[EventId]
		INNER JOIN [CTE_1] [b] ON ([ip].[InvestorId] = [b].[InvestorId] OR [ip].[InvestorId] IS NULL AND [b].[InvestorId] IS NULL) AND ([pe].[SecurityClass] = [b].[SecurityClass] OR [pe].[SecurityClass] IS NULL AND [b].[SecurityClass] IS NULL)
GROUP BY
	[ip].[InvestorId],
	[b].[Units]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Transaction]', N'U') IS NOT NULL)
	DROP TABLE [Transaction]

