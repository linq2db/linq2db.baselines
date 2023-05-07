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
		[SecurityClass] NVarChar(4000)     NULL,
		[Units]         Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NOT NULL)
	DROP TABLE [InvestorPayment]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InvestorPayment]', N'U') IS NULL)
	CREATE TABLE [InvestorPayment]
	(
		[Id]         Int            NOT NULL,
		[InvestorId] NVarChar(4000)     NULL,
		[NetPayment] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
		[SecurityClass] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

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

