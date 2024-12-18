BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PriceList') IS NOT NULL)
	DROP TABLE [PriceList]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PriceList') IS NULL)
	EXECUTE('
		CREATE TABLE [PriceList]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Product') IS NOT NULL)
	DROP TABLE [Product]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Product') IS NULL)
	EXECUTE('
		CREATE TABLE [Product]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AccessTariff') IS NOT NULL)
	DROP TABLE [AccessTariff]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AccessTariff') IS NULL)
	EXECUTE('
		CREATE TABLE [AccessTariff]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_AccessTariff] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CountryState') IS NOT NULL)
	DROP TABLE [CountryState]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CountryState') IS NULL)
	EXECUTE('
		CREATE TABLE [CountryState]
		(
			[Id]                    Int IDENTITY NOT NULL,
			[CountryId]             Int          NOT NULL,
			[AutonomousCommunityId] Int              NULL,

			CONSTRAINT [PK_CountryState] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AutonomousCommunity') IS NOT NULL)
	DROP TABLE [AutonomousCommunity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AutonomousCommunity') IS NULL)
	EXECUTE('
		CREATE TABLE [AutonomousCommunity]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_AutonomousCommunity] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Country') IS NOT NULL)
	DROP TABLE [Country]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Country') IS NULL)
	EXECUTE('
		CREATE TABLE [Country]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoicePendingState') IS NOT NULL)
	DROP TABLE [InvoicePendingState]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoicePendingState') IS NULL)
	EXECUTE('
		CREATE TABLE [InvoicePendingState]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_InvoicePendingState] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TypeBMeasures') IS NOT NULL)
	DROP TABLE [TypeBMeasures]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TypeBMeasures') IS NULL)
	EXECUTE('
		CREATE TABLE [TypeBMeasures]
		(
			[Id]              Int IDENTITY NOT NULL,
			[CustomInvoiceId] Int          NOT NULL,

			CONSTRAINT [PK_TypeBMeasures] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Town') IS NOT NULL)
	DROP TABLE [Town]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Town') IS NULL)
	EXECUTE('
		CREATE TABLE [Town]
		(
			[Id]      Int IDENTITY NOT NULL,
			[StateId] Int              NULL,

			CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoiceLine') IS NOT NULL)
	DROP TABLE [InvoiceLine]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoiceLine') IS NULL)
	EXECUTE('
		CREATE TABLE [InvoiceLine]
		(
			[Id]            Int IDENTITY NOT NULL,
			[ProductUnitId] Int              NULL,
			[InvoiceId]     Int              NULL,
			[ProductId]     Int              NULL,

			CONSTRAINT [PK_InvoiceLine] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AccountTax') IS NOT NULL)
	DROP TABLE [AccountTax]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AccountTax') IS NULL)
	EXECUTE('
		CREATE TABLE [AccountTax]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_AccountTax] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoiceTaxLine') IS NOT NULL)
	DROP TABLE [InvoiceTaxLine]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoiceTaxLine') IS NULL)
	EXECUTE('
		CREATE TABLE [InvoiceTaxLine]
		(
			[Id]        Int IDENTITY NOT NULL,
			[InvoiceId] Int              NULL,
			[TaxId]     Int              NULL,

			CONSTRAINT [PK_InvoiceTaxLine] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Invoice') IS NOT NULL)
	DROP TABLE [Invoice]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Invoice') IS NULL)
	EXECUTE('
		CREATE TABLE [Invoice]
		(
			[Id]                  Int IDENTITY NOT NULL,
			[PendingStateId]      Int              NULL,
			[RectifyingInvoiceId] Int              NULL,
			[RefundByInvoiceId]   Int              NULL,

			CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MeasureSource') IS NOT NULL)
	DROP TABLE [MeasureSource]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MeasureSource') IS NULL)
	EXECUTE('
		CREATE TABLE [MeasureSource]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_MeasureSource] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TypeAMeasures') IS NOT NULL)
	DROP TABLE [TypeAMeasures]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TypeAMeasures') IS NULL)
	EXECUTE('
		CREATE TABLE [TypeAMeasures]
		(
			[Id]               Int IDENTITY NOT NULL,
			[CustomInvoiceId]  Int          NOT NULL,
			[MeasuresSourceId] Int          NOT NULL,
			[PreviousSourceId] Int          NOT NULL,

			CONSTRAINT [PK_TypeAMeasures] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StreetType') IS NOT NULL)
	DROP TABLE [StreetType]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StreetType') IS NULL)
	EXECUTE('
		CREATE TABLE [StreetType]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_StreetType] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ServicePoint') IS NOT NULL)
	DROP TABLE [ServicePoint]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ServicePoint') IS NULL)
	EXECUTE('
		CREATE TABLE [ServicePoint]
		(
			[Id]           Int IDENTITY NOT NULL,
			[TownId]       Int          NOT NULL,
			[StreetTypeId] Int          NOT NULL,

			CONSTRAINT [PK_ServicePoint] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductUnit') IS NOT NULL)
	DROP TABLE [ProductUnit]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductUnit') IS NULL)
	EXECUTE('
		CREATE TABLE [ProductUnit]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_ProductUnit] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract') IS NOT NULL)
	DROP TABLE [Contract]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract') IS NULL)
	EXECUTE('
		CREATE TABLE [Contract]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomInvoice') IS NOT NULL)
	DROP TABLE [CustomInvoice]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomInvoice') IS NULL)
	EXECUTE('
		CREATE TABLE [CustomInvoice]
		(
			[Id]             Int IDENTITY NOT NULL,
			[ContractId]     Int          NOT NULL,
			[InvoiceId]      Int          NOT NULL,
			[ServicePointId] Int          NOT NULL,
			[AccessTariffId] Int          NOT NULL,
			[PriceListId]    Int          NOT NULL,

			CONSTRAINT [PK_CustomInvoice] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomInvoiceLine') IS NOT NULL)
	DROP TABLE [CustomInvoiceLine]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomInvoiceLine') IS NULL)
	EXECUTE('
		CREATE TABLE [CustomInvoiceLine]
		(
			[Id]              Int IDENTITY NOT NULL,
			[CustomInvoiceId] Int          NOT NULL,

			CONSTRAINT [PK_CustomInvoiceLine] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomInvoiceLine') IS NOT NULL)
	DROP TABLE [CustomInvoiceLine]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomInvoice') IS NOT NULL)
	DROP TABLE [CustomInvoice]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract') IS NOT NULL)
	DROP TABLE [Contract]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductUnit') IS NOT NULL)
	DROP TABLE [ProductUnit]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ServicePoint') IS NOT NULL)
	DROP TABLE [ServicePoint]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StreetType') IS NOT NULL)
	DROP TABLE [StreetType]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TypeAMeasures') IS NOT NULL)
	DROP TABLE [TypeAMeasures]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MeasureSource') IS NOT NULL)
	DROP TABLE [MeasureSource]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Invoice') IS NOT NULL)
	DROP TABLE [Invoice]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoiceTaxLine') IS NOT NULL)
	DROP TABLE [InvoiceTaxLine]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AccountTax') IS NOT NULL)
	DROP TABLE [AccountTax]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoiceLine') IS NOT NULL)
	DROP TABLE [InvoiceLine]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Town') IS NOT NULL)
	DROP TABLE [Town]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TypeBMeasures') IS NOT NULL)
	DROP TABLE [TypeBMeasures]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InvoicePendingState') IS NOT NULL)
	DROP TABLE [InvoicePendingState]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Country') IS NOT NULL)
	DROP TABLE [Country]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AutonomousCommunity') IS NOT NULL)
	DROP TABLE [AutonomousCommunity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CountryState') IS NOT NULL)
	DROP TABLE [CountryState]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AccessTariff') IS NOT NULL)
	DROP TABLE [AccessTariff]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Product') IS NOT NULL)
	DROP TABLE [Product]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PriceList') IS NOT NULL)
	DROP TABLE [PriceList]

