BeforeExecute
-- SqlCe

DROP TABLE [PriceList]

BeforeExecute
-- SqlCe

CREATE TABLE [PriceList]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_PriceList] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Product]

BeforeExecute
-- SqlCe

CREATE TABLE [Product]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Product] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [AccessTariff]

BeforeExecute
-- SqlCe

CREATE TABLE [AccessTariff]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_AccessTariff] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [CountryState]

BeforeExecute
-- SqlCe

CREATE TABLE [CountryState]
(
	[Id]                    Int  NOT NULL IDENTITY,
	[CountryId]             Int  NOT NULL,
	[AutonomousCommunityId] Int      NULL,

	CONSTRAINT [PK_CountryState] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [AutonomousCommunity]

BeforeExecute
-- SqlCe

CREATE TABLE [AutonomousCommunity]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_AutonomousCommunity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Country]

BeforeExecute
-- SqlCe

CREATE TABLE [Country]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Country] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [InvoicePendingState]

BeforeExecute
-- SqlCe

CREATE TABLE [InvoicePendingState]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_InvoicePendingState] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [TypeBMeasures]

BeforeExecute
-- SqlCe

CREATE TABLE [TypeBMeasures]
(
	[Id]              Int  NOT NULL IDENTITY,
	[CustomInvoiceId] Int  NOT NULL,

	CONSTRAINT [PK_TypeBMeasures] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Town]

BeforeExecute
-- SqlCe

CREATE TABLE [Town]
(
	[Id]      Int  NOT NULL IDENTITY,
	[StateId] Int      NULL,

	CONSTRAINT [PK_Town] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [InvoiceLine]

BeforeExecute
-- SqlCe

CREATE TABLE [InvoiceLine]
(
	[Id]            Int  NOT NULL IDENTITY,
	[ProductUnitId] Int      NULL,
	[InvoiceId]     Int      NULL,
	[ProductId]     Int      NULL,

	CONSTRAINT [PK_InvoiceLine] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [AccountTax]

BeforeExecute
-- SqlCe

CREATE TABLE [AccountTax]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_AccountTax] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [InvoiceTaxLine]

BeforeExecute
-- SqlCe

CREATE TABLE [InvoiceTaxLine]
(
	[Id]        Int  NOT NULL IDENTITY,
	[InvoiceId] Int      NULL,
	[TaxId]     Int      NULL,

	CONSTRAINT [PK_InvoiceTaxLine] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Invoice]

BeforeExecute
-- SqlCe

CREATE TABLE [Invoice]
(
	[Id]                  Int  NOT NULL IDENTITY,
	[PendingStateId]      Int      NULL,
	[RectifyingInvoiceId] Int      NULL,
	[RefundByInvoiceId]   Int      NULL,

	CONSTRAINT [PK_Invoice] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [MeasureSource]

BeforeExecute
-- SqlCe

CREATE TABLE [MeasureSource]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_MeasureSource] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [TypeAMeasures]

BeforeExecute
-- SqlCe

CREATE TABLE [TypeAMeasures]
(
	[Id]               Int  NOT NULL IDENTITY,
	[CustomInvoiceId]  Int  NOT NULL,
	[MeasuresSourceId] Int  NOT NULL,
	[PreviousSourceId] Int  NOT NULL,

	CONSTRAINT [PK_TypeAMeasures] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [StreetType]

BeforeExecute
-- SqlCe

CREATE TABLE [StreetType]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_StreetType] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [ServicePoint]

BeforeExecute
-- SqlCe

CREATE TABLE [ServicePoint]
(
	[Id]           Int  NOT NULL IDENTITY,
	[TownId]       Int  NOT NULL,
	[StreetTypeId] Int  NOT NULL,

	CONSTRAINT [PK_ServicePoint] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [ProductUnit]

BeforeExecute
-- SqlCe

CREATE TABLE [ProductUnit]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_ProductUnit] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Contract]

BeforeExecute
-- SqlCe

CREATE TABLE [Contract]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Contract] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [CustomInvoice]

BeforeExecute
-- SqlCe

CREATE TABLE [CustomInvoice]
(
	[Id]             Int  NOT NULL IDENTITY,
	[ContractId]     Int  NOT NULL,
	[InvoiceId]      Int  NOT NULL,
	[ServicePointId] Int  NOT NULL,
	[AccessTariffId] Int  NOT NULL,
	[PriceListId]    Int  NOT NULL,

	CONSTRAINT [PK_CustomInvoice] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [CustomInvoiceLine]

BeforeExecute
-- SqlCe

CREATE TABLE [CustomInvoiceLine]
(
	[Id]              Int  NOT NULL IDENTITY,
	[CustomInvoiceId] Int  NOT NULL,

	CONSTRAINT [PK_CustomInvoiceLine] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ProductUnitId],
	[d].[InvoiceId],
	[d].[ProductId],
	[a_ProductUnit].[Id] as [cond],
	[a_Product].[Id] as [cond_1]
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
		INNER JOIN [InvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
		LEFT JOIN [ProductUnit] [a_ProductUnit] ON [d].[ProductUnitId] = [a_ProductUnit].[Id]
		LEFT JOIN [Product] [a_Product] ON [d].[ProductId] = [a_Product].[Id]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[InvoiceId],
	[d].[TaxId],
	[a_Tax].[Id] as [Id_2]
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
		INNER JOIN [InvoiceTaxLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
		INNER JOIN [AccountTax] [a_Tax] ON [d].[TaxId] = [a_Tax].[Id]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
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
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[CustomInvoiceId],
	[d].[MeasuresSourceId],
	[d].[PreviousSourceId],
	[a_Source].[Id] as [cond],
	[a_PreviousSource].[Id] as [cond_1]
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
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
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
-- SqlCe

SELECT
	[f].[Id],
	[f].[ContractId],
	[f].[InvoiceId],
	[f].[ServicePointId],
	[f].[AccessTariffId],
	[f].[PriceListId],
	[a_Invoice].[Id] as [Id_1],
	[a_Invoice].[PendingStateId],
	[a_Invoice].[RectifyingInvoiceId],
	[a_Invoice].[RefundByInvoiceId],
	[a_Rectifying].[Id] as [Id_2],
	[a_Rectifying].[PendingStateId] as [PendingStateId_1],
	[a_Rectifying].[RectifyingInvoiceId] as [RectifyingInvoiceId_1],
	[a_Rectifying].[RefundByInvoiceId] as [RefundByInvoiceId_1],
	[a_RefundBy].[Id] as [Id_3],
	[a_RefundBy].[PendingStateId] as [PendingStateId_2],
	[a_RefundBy].[RectifyingInvoiceId] as [RectifyingInvoiceId_2],
	[a_RefundBy].[RefundByInvoiceId] as [RefundByInvoiceId_2],
	[a_PendingState].[Id] as [Id_4],
	[a_Invoice].[Id] as [Id_5],
	[a_Contract].[Id] as [Id_6],
	[a_AccessTariff].[Id] as [Id_7],
	[a_ServicePoint].[Id] as [Id_8],
	[a_ServicePoint].[TownId],
	[a_ServicePoint].[StreetTypeId],
	[a_Town].[Id] as [Id_9],
	[a_Town].[StateId],
	[a_State].[Id] as [Id_10],
	[a_State].[CountryId],
	[a_State].[AutonomousCommunityId],
	[a_Community].[Id] as [Id_11],
	[a_StreetType].[Id] as [Id_12],
	[f].[Id] as [Id_13],
	[a_PriceList].[Id] as [Id_14]
FROM
	[CustomInvoice] [f]
		INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
		LEFT JOIN [Invoice] [a_Rectifying] ON [a_Invoice].[RectifyingInvoiceId] = [a_Rectifying].[Id]
		LEFT JOIN [Invoice] [a_RefundBy] ON [a_Invoice].[RefundByInvoiceId] = [a_RefundBy].[Id]
		LEFT JOIN [InvoicePendingState] [a_PendingState] ON [a_Invoice].[PendingStateId] = [a_PendingState].[Id]
		INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
		INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
		INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		LEFT JOIN [Town] [a_Town] ON [a_ServicePoint].[TownId] = [a_Town].[Id]
		LEFT JOIN [CountryState] [a_State] ON [a_Town].[StateId] = [a_State].[Id]
		LEFT JOIN [AutonomousCommunity] [a_Community] ON [a_State].[AutonomousCommunityId] = [a_Community].[Id]
		LEFT JOIN [StreetType] [a_StreetType] ON [a_ServicePoint].[StreetTypeId] = [a_StreetType].[Id]
		LEFT JOIN [PriceList] [a_PriceList] ON [f].[PriceListId] = [a_PriceList].[Id]
WHERE
	[f].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [CustomInvoiceLine]

BeforeExecute
-- SqlCe

DROP TABLE [CustomInvoice]

BeforeExecute
-- SqlCe

DROP TABLE [Contract]

BeforeExecute
-- SqlCe

DROP TABLE [ProductUnit]

BeforeExecute
-- SqlCe

DROP TABLE [ServicePoint]

BeforeExecute
-- SqlCe

DROP TABLE [StreetType]

BeforeExecute
-- SqlCe

DROP TABLE [TypeAMeasures]

BeforeExecute
-- SqlCe

DROP TABLE [MeasureSource]

BeforeExecute
-- SqlCe

DROP TABLE [Invoice]

BeforeExecute
-- SqlCe

DROP TABLE [InvoiceTaxLine]

BeforeExecute
-- SqlCe

DROP TABLE [AccountTax]

BeforeExecute
-- SqlCe

DROP TABLE [InvoiceLine]

BeforeExecute
-- SqlCe

DROP TABLE [Town]

BeforeExecute
-- SqlCe

DROP TABLE [TypeBMeasures]

BeforeExecute
-- SqlCe

DROP TABLE [InvoicePendingState]

BeforeExecute
-- SqlCe

DROP TABLE [Country]

BeforeExecute
-- SqlCe

DROP TABLE [AutonomousCommunity]

BeforeExecute
-- SqlCe

DROP TABLE [CountryState]

BeforeExecute
-- SqlCe

DROP TABLE [AccessTariff]

BeforeExecute
-- SqlCe

DROP TABLE [Product]

BeforeExecute
-- SqlCe

DROP TABLE [PriceList]

