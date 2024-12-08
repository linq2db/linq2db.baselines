BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PriceList]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [PriceList]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_PriceList] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Product]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Product]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AccessTariff]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [AccessTariff]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_AccessTariff] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CountryState]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CountryState]
(
	[Id]                    Int  NOT NULL IDENTITY,
	[CountryId]             Int  NOT NULL,
	[AutonomousCommunityId] Int      NULL,

	CONSTRAINT [PK_CountryState] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AutonomousCommunity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [AutonomousCommunity]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_AutonomousCommunity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Country]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Country]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InvoicePendingState]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [InvoicePendingState]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_InvoicePendingState] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TypeBMeasures]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TypeBMeasures]
(
	[Id]              Int  NOT NULL IDENTITY,
	[CustomInvoiceId] Int  NOT NULL,

	CONSTRAINT [PK_TypeBMeasures] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Town]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Town]
(
	[Id]      Int  NOT NULL IDENTITY,
	[StateId] Int      NULL,

	CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InvoiceLine]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [InvoiceLine]
(
	[Id]            Int  NOT NULL IDENTITY,
	[ProductUnitId] Int      NULL,
	[InvoiceId]     Int      NULL,
	[ProductId]     Int      NULL,

	CONSTRAINT [PK_InvoiceLine] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AccountTax]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [AccountTax]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_AccountTax] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InvoiceTaxLine]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [InvoiceTaxLine]
(
	[Id]        Int  NOT NULL IDENTITY,
	[InvoiceId] Int      NULL,
	[TaxId]     Int      NULL,

	CONSTRAINT [PK_InvoiceTaxLine] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Invoice]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Invoice]
(
	[Id]                  Int  NOT NULL IDENTITY,
	[PendingStateId]      Int      NULL,
	[RectifyingInvoiceId] Int      NULL,
	[RefundByInvoiceId]   Int      NULL,

	CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [MeasureSource]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [MeasureSource]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_MeasureSource] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TypeAMeasures]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TypeAMeasures]
(
	[Id]               Int  NOT NULL IDENTITY,
	[CustomInvoiceId]  Int  NOT NULL,
	[MeasuresSourceId] Int  NOT NULL,
	[PreviousSourceId] Int  NOT NULL,

	CONSTRAINT [PK_TypeAMeasures] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [StreetType]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [StreetType]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_StreetType] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ServicePoint]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ServicePoint]
(
	[Id]           Int  NOT NULL IDENTITY,
	[TownId]       Int  NOT NULL,
	[StreetTypeId] Int  NOT NULL,

	CONSTRAINT [PK_ServicePoint] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ProductUnit]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ProductUnit]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_ProductUnit] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Contract]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Contract]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CustomInvoice]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CustomInvoiceLine]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CustomInvoiceLine]
(
	[Id]              Int  NOT NULL IDENTITY,
	[CustomInvoiceId] Int  NOT NULL,

	CONSTRAINT [PK_CustomInvoiceLine] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ProductUnitId],
	[d].[InvoiceId],
	[d].[ProductId],
	[a_ProductUnit].[Id],
	[a_Product].[Id]
FROM
	(((
		SELECT DISTINCT
			[a_Invoice].[Id]
		FROM
			((([CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON ([f].[InvoiceId] = [a_Invoice].[Id]))
				INNER JOIN [Contract] [a_Contract] ON ([f].[ContractId] = [a_Contract].[Id]))
				INNER JOIN [AccessTariff] [a_AccessTariff] ON ([f].[AccessTariffId] = [a_AccessTariff].[Id]))
				INNER JOIN [ServicePoint] [a_ServicePoint] ON ([f].[ServicePointId] = [a_ServicePoint].[Id])
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [InvoiceLine] [d] ON ([m_1].[Id] = [d].[InvoiceId]))
		LEFT JOIN [ProductUnit] [a_ProductUnit] ON ([d].[ProductUnitId] = [a_ProductUnit].[Id]))
		LEFT JOIN [Product] [a_Product] ON ([d].[ProductId] = [a_Product].[Id])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[InvoiceId],
	[d].[TaxId],
	[a_Tax].[Id]
FROM
	((
		SELECT DISTINCT
			[a_Invoice].[Id]
		FROM
			((([CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON ([f].[InvoiceId] = [a_Invoice].[Id]))
				INNER JOIN [Contract] [a_Contract] ON ([f].[ContractId] = [a_Contract].[Id]))
				INNER JOIN [AccessTariff] [a_AccessTariff] ON ([f].[AccessTariffId] = [a_AccessTariff].[Id]))
				INNER JOIN [ServicePoint] [a_ServicePoint] ON ([f].[ServicePointId] = [a_ServicePoint].[Id])
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [InvoiceTaxLine] [d] ON ([m_1].[Id] = [d].[InvoiceId]))
		INNER JOIN [AccountTax] [a_Tax] ON ([d].[TaxId] = [a_Tax].[Id])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[CustomInvoiceId]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			((([CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON ([f].[InvoiceId] = [a_Invoice].[Id]))
				INNER JOIN [Contract] [a_Contract] ON ([f].[ContractId] = [a_Contract].[Id]))
				INNER JOIN [AccessTariff] [a_AccessTariff] ON ([f].[AccessTariffId] = [a_AccessTariff].[Id]))
				INNER JOIN [ServicePoint] [a_ServicePoint] ON ([f].[ServicePointId] = [a_ServicePoint].[Id])
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [CustomInvoiceLine] [d] ON ([m_1].[Id] = [d].[CustomInvoiceId])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[CustomInvoiceId],
	[d].[MeasuresSourceId],
	[d].[PreviousSourceId],
	[a_Source].[Id],
	[a_PreviousSource].[Id]
FROM
	(((
		SELECT DISTINCT
			[f].[Id]
		FROM
			((([CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON ([f].[InvoiceId] = [a_Invoice].[Id]))
				INNER JOIN [Contract] [a_Contract] ON ([f].[ContractId] = [a_Contract].[Id]))
				INNER JOIN [AccessTariff] [a_AccessTariff] ON ([f].[AccessTariffId] = [a_AccessTariff].[Id]))
				INNER JOIN [ServicePoint] [a_ServicePoint] ON ([f].[ServicePointId] = [a_ServicePoint].[Id])
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [TypeAMeasures] [d] ON ([m_1].[Id] = [d].[CustomInvoiceId]))
		LEFT JOIN [MeasureSource] [a_Source] ON ([d].[MeasuresSourceId] = [a_Source].[Id]))
		LEFT JOIN [MeasureSource] [a_PreviousSource] ON ([d].[PreviousSourceId] = [a_PreviousSource].[Id])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[CustomInvoiceId]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			((([CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON ([f].[InvoiceId] = [a_Invoice].[Id]))
				INNER JOIN [Contract] [a_Contract] ON ([f].[ContractId] = [a_Contract].[Id]))
				INNER JOIN [AccessTariff] [a_AccessTariff] ON ([f].[AccessTariffId] = [a_AccessTariff].[Id]))
				INNER JOIN [ServicePoint] [a_ServicePoint] ON ([f].[ServicePointId] = [a_ServicePoint].[Id])
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [TypeBMeasures] [d] ON ([m_1].[Id] = [d].[CustomInvoiceId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
	((((((((((([CustomInvoice] [f]
		INNER JOIN [Invoice] [a_Invoice] ON ([f].[InvoiceId] = [a_Invoice].[Id]))
		LEFT JOIN [Invoice] [a_Rectifying] ON ([a_Invoice].[RectifyingInvoiceId] = [a_Rectifying].[Id]))
		LEFT JOIN [Invoice] [a_RefundBy] ON ([a_Invoice].[RefundByInvoiceId] = [a_RefundBy].[Id]))
		LEFT JOIN [InvoicePendingState] [a_PendingState] ON ([a_Invoice].[PendingStateId] = [a_PendingState].[Id]))
		INNER JOIN [Contract] [a_Contract] ON ([f].[ContractId] = [a_Contract].[Id]))
		INNER JOIN [AccessTariff] [a_AccessTariff] ON ([f].[AccessTariffId] = [a_AccessTariff].[Id]))
		INNER JOIN [ServicePoint] [a_ServicePoint] ON ([f].[ServicePointId] = [a_ServicePoint].[Id]))
		LEFT JOIN [Town] [a_Town] ON ([a_ServicePoint].[TownId] = [a_Town].[Id]))
		LEFT JOIN [CountryState] [a_State] ON ([a_Town].[StateId] = [a_State].[Id]))
		LEFT JOIN [AutonomousCommunity] [a_Community] ON ([a_State].[AutonomousCommunityId] = [a_Community].[Id]))
		LEFT JOIN [StreetType] [a_StreetType] ON ([a_ServicePoint].[StreetTypeId] = [a_StreetType].[Id]))
		LEFT JOIN [PriceList] [a_PriceList] ON ([f].[PriceListId] = [a_PriceList].[Id])
WHERE
	[f].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CustomInvoiceLine]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CustomInvoice]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Contract]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ProductUnit]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ServicePoint]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [StreetType]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TypeAMeasures]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [MeasureSource]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Invoice]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InvoiceTaxLine]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AccountTax]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InvoiceLine]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Town]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TypeBMeasures]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [InvoicePendingState]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Country]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AutonomousCommunity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CountryState]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AccessTariff]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Product]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PriceList]

