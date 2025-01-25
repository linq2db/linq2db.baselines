BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transaction') IS NOT NULL)
	DROP TABLE [Transaction]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transaction') IS NULL)
	EXECUTE('
		CREATE TABLE [Transaction]
		(
			[InvestorId]    NVarChar(255)     NULL,
			[SecurityClass] NVarChar(255) NOT NULL,
			[Units]         Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
SELECT 'inv1','test',100 UNION ALL
SELECT 'inv1','test',200 UNION ALL
SELECT 'inv2','test',300 UNION ALL
SELECT 'inv2','test',400

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvestorPayment') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvestorPayment') IS NULL)
	EXECUTE('
		CREATE TABLE [InvestorPayment]
		(
			[Id]         Int           NOT NULL,
			[InvestorId] NVarChar(255) NOT NULL,
			[NetPayment] Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
SELECT 1,'inv1',100 UNION ALL
SELECT 2,'inv2',200

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PaymentEvent') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PaymentEvent') IS NULL)
	EXECUTE('
		CREATE TABLE [PaymentEvent]
		(
			[Id]            Int           NOT NULL,
			[Description]   NVarChar(255)     NULL,
			[SecurityClass] NVarChar(255) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
SELECT 1,'one','test' UNION ALL
SELECT 2,'two','test'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvestorPaymentDetail') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvestorPaymentDetail') IS NULL)
	EXECUTE('
		CREATE TABLE [InvestorPaymentDetail]
		(
			[InvestorId]    NVarChar(255)     NULL,
			[CalculationId] Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
SELECT 'inv1',1 UNION ALL
SELECT 'inv2',2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PaymentCalculation') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PaymentCalculation') IS NULL)
	EXECUTE('
		CREATE TABLE [PaymentCalculation]
		(
			[Id]      Int NOT NULL,
			[EventId] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[ip].[InvestorId],
	[t1].[Units],
	SUM([ip].[NetPayment])
FROM
	[PaymentEvent] [g_1]
		INNER JOIN [InvestorPayment] [ip] ON [g_1].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON [ip].[InvestorId] = [ipd].[InvestorId]
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [g_1].[Id] = [pc].[EventId]
		INNER JOIN (
			SELECT
				[b].[InvestorId],
				[b].[SecurityClass],
				SUM([b].[Units]) as [Units]
			FROM
				[Transaction] [b]
			GROUP BY
				[b].[SecurityClass],
				[b].[InvestorId]
		) [t1] ON [ip].[InvestorId] = [t1].[InvestorId] AND [g_1].[SecurityClass] = [t1].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[t1].[Units]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PaymentCalculation') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvestorPaymentDetail') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PaymentEvent') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvestorPayment') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transaction') IS NOT NULL)
	DROP TABLE [Transaction]

