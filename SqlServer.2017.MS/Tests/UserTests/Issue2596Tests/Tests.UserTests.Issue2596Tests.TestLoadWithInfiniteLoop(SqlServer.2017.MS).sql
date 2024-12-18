BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PriceList]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[PriceList]', N'U') IS NULL)
	CREATE TABLE [PriceList]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Product]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Product]', N'U') IS NULL)
	CREATE TABLE [Product]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AccessTariff]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[AccessTariff]', N'U') IS NULL)
	CREATE TABLE [AccessTariff]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_AccessTariff] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CountryState]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[CountryState]', N'U') IS NULL)
	CREATE TABLE [CountryState]
	(
		[Id]                    Int  NOT NULL IDENTITY,
		[CountryId]             Int  NOT NULL,
		[AutonomousCommunityId] Int      NULL,

		CONSTRAINT [PK_CountryState] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AutonomousCommunity]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[AutonomousCommunity]', N'U') IS NULL)
	CREATE TABLE [AutonomousCommunity]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_AutonomousCommunity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Country]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Country]', N'U') IS NULL)
	CREATE TABLE [Country]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvoicePendingState]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[InvoicePendingState]', N'U') IS NULL)
	CREATE TABLE [InvoicePendingState]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_InvoicePendingState] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TypeBMeasures]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TypeBMeasures]', N'U') IS NULL)
	CREATE TABLE [TypeBMeasures]
	(
		[Id]              Int  NOT NULL IDENTITY,
		[CustomInvoiceId] Int  NOT NULL,

		CONSTRAINT [PK_TypeBMeasures] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Town]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Town]', N'U') IS NULL)
	CREATE TABLE [Town]
	(
		[Id]      Int  NOT NULL IDENTITY,
		[StateId] Int      NULL,

		CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvoiceLine]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[InvoiceLine]', N'U') IS NULL)
	CREATE TABLE [InvoiceLine]
	(
		[Id]            Int  NOT NULL IDENTITY,
		[ProductUnitId] Int      NULL,
		[InvoiceId]     Int      NULL,
		[ProductId]     Int      NULL,

		CONSTRAINT [PK_InvoiceLine] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AccountTax]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[AccountTax]', N'U') IS NULL)
	CREATE TABLE [AccountTax]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_AccountTax] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvoiceTaxLine]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[InvoiceTaxLine]', N'U') IS NULL)
	CREATE TABLE [InvoiceTaxLine]
	(
		[Id]        Int  NOT NULL IDENTITY,
		[InvoiceId] Int      NULL,
		[TaxId]     Int      NULL,

		CONSTRAINT [PK_InvoiceTaxLine] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Invoice]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Invoice]', N'U') IS NULL)
	CREATE TABLE [Invoice]
	(
		[Id]                  Int  NOT NULL IDENTITY,
		[PendingStateId]      Int      NULL,
		[RectifyingInvoiceId] Int      NULL,
		[RefundByInvoiceId]   Int      NULL,

		CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [MeasureSource]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[MeasureSource]', N'U') IS NULL)
	CREATE TABLE [MeasureSource]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_MeasureSource] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TypeAMeasures]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TypeAMeasures]', N'U') IS NULL)
	CREATE TABLE [TypeAMeasures]
	(
		[Id]               Int  NOT NULL IDENTITY,
		[CustomInvoiceId]  Int  NOT NULL,
		[MeasuresSourceId] Int  NOT NULL,
		[PreviousSourceId] Int  NOT NULL,

		CONSTRAINT [PK_TypeAMeasures] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [StreetType]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[StreetType]', N'U') IS NULL)
	CREATE TABLE [StreetType]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_StreetType] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ServicePoint]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[ServicePoint]', N'U') IS NULL)
	CREATE TABLE [ServicePoint]
	(
		[Id]           Int  NOT NULL IDENTITY,
		[TownId]       Int  NOT NULL,
		[StreetTypeId] Int  NOT NULL,

		CONSTRAINT [PK_ServicePoint] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ProductUnit]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[ProductUnit]', N'U') IS NULL)
	CREATE TABLE [ProductUnit]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_ProductUnit] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Contract]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Contract]', N'U') IS NULL)
	CREATE TABLE [Contract]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CustomInvoice]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[CustomInvoice]', N'U') IS NULL)
	CREATE TABLE [CustomInvoice]
	(
		[Id]             Int  NOT NULL IDENTITY,
		[ContractId]     Int  NOT NULL,
		[InvoiceId]      Int  NOT NULL,
		[ServicePointId] Int  NOT NULL,
		[AccessTariffId] Int  NOT NULL,
		[PriceListId]    Int  NOT NULL,

		CONSTRAINT [PK_CustomInvoice] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CustomInvoiceLine]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[CustomInvoiceLine]', N'U') IS NULL)
	CREATE TABLE [CustomInvoiceLine]
	(
		[Id]              Int  NOT NULL IDENTITY,
		[CustomInvoiceId] Int  NOT NULL,

		CONSTRAINT [PK_CustomInvoiceLine] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ProductUnitId],
	[d].[InvoiceId],
	[d].[ProductId],
	[a_ProductUnit].[Id],
	[a_Product].[Id]
FROM
	(
		SELECT DISTINCT
			[a_Invoice].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [InvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId] AND [d].[InvoiceId] IS NOT NULL
		LEFT JOIN [ProductUnit] [a_ProductUnit] ON [d].[ProductUnitId] = [a_ProductUnit].[Id] AND [d].[ProductUnitId] IS NOT NULL
		LEFT JOIN [Product] [a_Product] ON [d].[ProductId] = [a_Product].[Id] AND [d].[ProductId] IS NOT NULL

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId],
	[d].[TaxId],
	[a_Tax].[Id]
FROM
	(
		SELECT DISTINCT
			[a_Invoice].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [InvoiceTaxLine] [d] ON [m_1].[Id] = [d].[InvoiceId] AND [d].[InvoiceId] IS NOT NULL
		INNER JOIN [AccountTax] [a_Tax] ON [d].[TaxId] = [a_Tax].[Id] AND [d].[TaxId] IS NOT NULL

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[CustomInvoiceId]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [CustomInvoiceLine] [d] ON [m_1].[Id] = [d].[CustomInvoiceId]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[CustomInvoiceId],
	[d].[MeasuresSourceId],
	[d].[PreviousSourceId],
	[a_Source].[Id],
	[a_PreviousSource].[Id]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [TypeAMeasures] [d] ON [m_1].[Id] = [d].[CustomInvoiceId]
		LEFT JOIN [MeasureSource] [a_Source] ON [d].[MeasuresSourceId] = [a_Source].[Id]
		LEFT JOIN [MeasureSource] [a_PreviousSource] ON [d].[PreviousSourceId] = [a_PreviousSource].[Id]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[CustomInvoiceId]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [TypeBMeasures] [d] ON [m_1].[Id] = [d].[CustomInvoiceId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[f].[Id],
	[f].[ContractId],
	[f].[InvoiceId],
	[f].[ServicePointId],
	[f].[AccessTariffId],
	[f].[PriceListId],
	[a_Invoice].[Id],
	[a_Invoice].[PendingStateId],
	[a_Invoice].[RectifyingInvoiceId],
	[a_Invoice].[RefundByInvoiceId],
	[a_Rectifying].[Id],
	[a_Rectifying].[PendingStateId],
	[a_Rectifying].[RectifyingInvoiceId],
	[a_Rectifying].[RefundByInvoiceId],
	[a_RefundBy].[Id],
	[a_RefundBy].[PendingStateId],
	[a_RefundBy].[RectifyingInvoiceId],
	[a_RefundBy].[RefundByInvoiceId],
	[a_PendingState].[Id],
	[a_Invoice].[Id],
	[a_Contract].[Id],
	[a_AccessTariff].[Id],
	[a_ServicePoint].[Id],
	[a_ServicePoint].[TownId],
	[a_ServicePoint].[StreetTypeId],
	[a_Town].[Id],
	[a_Town].[StateId],
	[a_State].[Id],
	[a_State].[CountryId],
	[a_State].[AutonomousCommunityId],
	[a_Community].[Id],
	[a_StreetType].[Id],
	[f].[Id],
	[a_PriceList].[Id]
FROM
	[CustomInvoice] [f]
		INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
		LEFT JOIN [Invoice] [a_Rectifying] ON [a_Invoice].[RectifyingInvoiceId] = [a_Rectifying].[Id] AND [a_Invoice].[RectifyingInvoiceId] IS NOT NULL
		LEFT JOIN [Invoice] [a_RefundBy] ON [a_Invoice].[RefundByInvoiceId] = [a_RefundBy].[Id] AND [a_Invoice].[RefundByInvoiceId] IS NOT NULL
		LEFT JOIN [InvoicePendingState] [a_PendingState] ON [a_Invoice].[PendingStateId] = [a_PendingState].[Id] AND [a_Invoice].[PendingStateId] IS NOT NULL
		INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
		INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
		INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		LEFT JOIN [Town] [a_Town] ON [a_ServicePoint].[TownId] = [a_Town].[Id]
		LEFT JOIN [CountryState] [a_State] ON [a_Town].[StateId] = [a_State].[Id] AND [a_Town].[StateId] IS NOT NULL
		LEFT JOIN [AutonomousCommunity] [a_Community] ON [a_State].[AutonomousCommunityId] = [a_Community].[Id] AND [a_State].[AutonomousCommunityId] IS NOT NULL
		LEFT JOIN [StreetType] [a_StreetType] ON [a_ServicePoint].[StreetTypeId] = [a_StreetType].[Id]
		LEFT JOIN [PriceList] [a_PriceList] ON [f].[PriceListId] = [a_PriceList].[Id]
WHERE
	[f].[Id] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CustomInvoiceLine]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CustomInvoice]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Contract]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ProductUnit]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [ServicePoint]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [StreetType]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TypeAMeasures]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [MeasureSource]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Invoice]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvoiceTaxLine]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AccountTax]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvoiceLine]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Town]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TypeBMeasures]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [InvoicePendingState]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Country]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AutonomousCommunity]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CountryState]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AccessTariff]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Product]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PriceList]

