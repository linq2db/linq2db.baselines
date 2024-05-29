BeforeExecute
-- SqlCe

DROP TABLE [Transaction]

BeforeExecute
-- SqlCe

CREATE TABLE [Transaction]
(
	[InvestorId]    NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL,
	[Units]         Int           NOT NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlCe

CREATE TABLE [InvestorPayment]
(
	[Id]         Int           NOT NULL,
	[InvestorId] NVarChar(255) NOT NULL,
	[NetPayment] Int           NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
SELECT 1,'inv1',100 UNION ALL
SELECT 2,'inv2',200

BeforeExecute
-- SqlCe

DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlCe

CREATE TABLE [PaymentEvent]
(
	[Id]            Int           NOT NULL,
	[Description]   NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255) NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
SELECT 1,'one','test' UNION ALL
SELECT 2,'two','test'

BeforeExecute
-- SqlCe

DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlCe

CREATE TABLE [InvestorPaymentDetail]
(
	[InvestorId]    NVarChar(255)     NULL,
	[CalculationId] Int           NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
SELECT 'inv1',1 UNION ALL
SELECT 'inv2',2

BeforeExecute
-- SqlCe

DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlCe

CREATE TABLE [PaymentCalculation]
(
	[Id]      Int NOT NULL,
	[EventId] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- SqlCe

SELECT
	[ip].[InvestorId],
	[t1].[Units] as [TotalUnits],
	SUM([ip].[NetPayment]) as [SUM_1]
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
-- SqlCe

DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlCe

DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlCe

DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlCe

DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlCe

DROP TABLE [Transaction]

