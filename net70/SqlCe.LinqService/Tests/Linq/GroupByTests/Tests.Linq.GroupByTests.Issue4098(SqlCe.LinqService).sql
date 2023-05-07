﻿BeforeExecute
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
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int -- Int32
SET     @Units = 100

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- SqlCe
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int -- Int32
SET     @Units = 200

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- SqlCe
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int -- Int32
SET     @Units = 300

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- SqlCe
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int -- Int32
SET     @Units = 400

INSERT INTO [Transaction]
(
	[InvestorId],
	[SecurityClass],
	[Units]
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @NetPayment Int -- Int32
SET     @NetPayment = 100

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
VALUES
(
	@Id,
	@InvestorId,
	@NetPayment
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @NetPayment Int -- Int32
SET     @NetPayment = 200

INSERT INTO [InvestorPayment]
(
	[Id],
	[InvestorId],
	[NetPayment]
)
VALUES
(
	@Id,
	@InvestorId,
	@NetPayment
)

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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Description NVarChar(3) -- String
SET     @Description = 'one'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
VALUES
(
	@Id,
	@Description,
	@SecurityClass
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Description NVarChar(3) -- String
SET     @Description = 'two'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO [PaymentEvent]
(
	[Id],
	[Description],
	[SecurityClass]
)
VALUES
(
	@Id,
	@Description,
	@SecurityClass
)

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
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @CalculationId Int -- Int32
SET     @CalculationId = 1

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
VALUES
(
	@InvestorId,
	@CalculationId
)

BeforeExecute
-- SqlCe
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @CalculationId Int -- Int32
SET     @CalculationId = 2

INSERT INTO [InvestorPaymentDetail]
(
	[InvestorId],
	[CalculationId]
)
VALUES
(
	@InvestorId,
	@CalculationId
)

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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @EventId Int -- Int32
SET     @EventId = 1

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
VALUES
(
	@Id,
	@EventId
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @EventId Int -- Int32
SET     @EventId = 2

INSERT INTO [PaymentCalculation]
(
	[Id],
	[EventId]
)
VALUES
(
	@Id,
	@EventId
)

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

