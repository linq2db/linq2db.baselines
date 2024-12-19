BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Transaction]', N'U') IS NOT NULL)
	DROP TABLE [Transaction]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Transaction]', N'U') IS NULL)
	CREATE TABLE [Transaction]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000) NOT NULL,
		[Units]         Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv1'
DECLARE @SecurityClass NVarChar(4000) -- String
SET     @SecurityClass = N'test'
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
-- SqlServer.2008
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv1'
DECLARE @SecurityClass NVarChar(4000) -- String
SET     @SecurityClass = N'test'
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
-- SqlServer.2008
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv2'
DECLARE @SecurityClass NVarChar(4000) -- String
SET     @SecurityClass = N'test'
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
-- SqlServer.2008
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv2'
DECLARE @SecurityClass NVarChar(4000) -- String
SET     @SecurityClass = N'test'
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
-- SqlServer.2008

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NULL)
	CREATE TABLE [InvestorPayment]
	(
		[Id]         Int            NOT NULL,
		[InvestorId] NVarChar(4000) NOT NULL,
		[NetPayment] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv1'
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
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv2'
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
-- SqlServer.2008

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NULL)
	CREATE TABLE [PaymentEvent]
	(
		[Id]            Int            NOT NULL,
		[Description]   NVarChar(4000)     NULL,
		[SecurityClass] NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Description NVarChar(4000) -- String
SET     @Description = N'one'
DECLARE @SecurityClass NVarChar(4000) -- String
SET     @SecurityClass = N'test'

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
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Description NVarChar(4000) -- String
SET     @Description = N'two'
DECLARE @SecurityClass NVarChar(4000) -- String
SET     @SecurityClass = N'test'

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
-- SqlServer.2008

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NULL)
	CREATE TABLE [InvestorPaymentDetail]
	(
		[InvestorId]    NVarChar(4000)     NULL,
		[CalculationId] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv1'
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
-- SqlServer.2008
DECLARE @InvestorId NVarChar(4000) -- String
SET     @InvestorId = N'inv2'
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
-- SqlServer.2008

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NULL)
	CREATE TABLE [PaymentCalculation]
	(
		[Id]      Int NOT NULL,
		[EventId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008

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
-- SqlServer.2008

IF (OBJECT_ID(N'[PaymentCalculation]', N'U') IS NOT NULL)
	DROP TABLE [PaymentCalculation]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InvestorPaymentDetail]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPaymentDetail]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[PaymentEvent]', N'U') IS NOT NULL)
	DROP TABLE [PaymentEvent]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Transaction]', N'U') IS NOT NULL)
	DROP TABLE [Transaction]

