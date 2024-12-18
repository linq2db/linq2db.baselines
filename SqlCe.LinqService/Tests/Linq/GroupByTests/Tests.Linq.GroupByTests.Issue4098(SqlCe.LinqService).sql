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
	[InvestorId] NVarChar(255) NOT NULL,
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
	[SecurityClass] NVarChar(255) NOT NULL
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
	[t1].[TotalUnits],
	SUM([ip].[NetPayment]) as [TotalAmount]
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
		) [t1] ON [ip].[InvestorId] = [t1].[InvestorId] AND [t1].[InvestorId] IS NOT NULL AND [p].[SecurityClass] = [t1].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[t1].[TotalUnits]

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

