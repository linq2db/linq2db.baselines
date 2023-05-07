BeforeExecute
-- SqlCe

DROP TABLE [Transaction]

BeforeExecute
-- SqlCe

CREATE TABLE [Transaction]
(
	[InvestorId]    NVarChar(255)     NULL,
	[SecurityClass] NVarChar(255)     NULL,
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
	[InvestorId] NVarChar(255)     NULL,
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
	[SecurityClass] NVarChar(255)     NULL
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
	[b].[Units],
	Sum([ip].[NetPayment])
FROM
	[PaymentEvent] [pe]
		INNER JOIN [InvestorPayment] [ip] ON [pe].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON ([ip].[InvestorId] = [ipd].[InvestorId] OR [ip].[InvestorId] IS NULL AND [ipd].[InvestorId] IS NULL)
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [pe].[Id] = [pc].[EventId]
		INNER JOIN (
			SELECT
				[t1].[InvestorId],
				[t1].[SecurityClass],
				Sum([t1].[Units]) as [Units]
			FROM
				[Transaction] [t1]
			GROUP BY
				[t1].[SecurityClass],
				[t1].[InvestorId]
		) [b] ON ([ip].[InvestorId] = [b].[InvestorId] OR [ip].[InvestorId] IS NULL AND [b].[InvestorId] IS NULL) AND ([pe].[SecurityClass] = [b].[SecurityClass] OR [pe].[SecurityClass] IS NULL AND [b].[SecurityClass] IS NULL)
GROUP BY
	[ip].[InvestorId],
	[b].[Units]

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

