﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Transaction]', N'U') IS NULL)
	CREATE TABLE [Transaction]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000) NOT NULL,
		[Units]         Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
VALUES
(N'inv1',N'test',100),
(N'inv1',N'test',200),
(N'inv2',N'test',300),
(N'inv2',N'test',400)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NULL)
	CREATE TABLE [InvestorPayment]
	(
		[Id]         Int            NOT NULL,
		[InvestorId] NVarChar(4000) NOT NULL,
		[NetPayment] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
VALUES
(1,N'inv1',100),
(2,N'inv2',200)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NULL)
	CREATE TABLE [PaymentEvent]
	(
		[Id]            Int            NOT NULL,
		[Description]   NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
VALUES
(1,N'one',N'test'),
(2,N'two',N'test')

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NULL)
	CREATE TABLE [InvestorPaymentDetail]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[CalculationId] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
VALUES
(N'inv1',1),
(N'inv2',2)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NULL)
	CREATE TABLE [PaymentCalculation]
	(
		[Id]      Int NOT NULL,
		[EventId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PaymentCalculation]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PaymentEvent]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvestorPayment]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Transaction]

