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
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass UniVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass UniVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass UniVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass UniVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Integer -- Int32
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @NetPayment Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @NetPayment Integer -- Int32
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Description UniVarChar(3) -- String
SET     @Description = 'one'
DECLARE @SecurityClass UniVarChar(4) -- String
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Description UniVarChar(3) -- String
SET     @Description = 'two'
DECLARE @SecurityClass UniVarChar(4) -- String
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
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @CalculationId Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @InvestorId UniVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @CalculationId Integer -- Int32
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @EventId Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @EventId Integer -- Int32
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

