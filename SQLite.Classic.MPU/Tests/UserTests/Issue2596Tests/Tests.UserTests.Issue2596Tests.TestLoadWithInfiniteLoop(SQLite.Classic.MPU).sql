BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PriceList]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PriceList]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Product]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Product]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AccessTariff]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AccessTariff]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CountryState]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CountryState]
(
	[Id]                    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[CountryId]             INTEGER  NOT NULL,
	[AutonomousCommunityId] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AutonomousCommunity]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AutonomousCommunity]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Country]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Country]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoicePendingState]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvoicePendingState]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TypeBMeasures]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TypeBMeasures]
(
	[Id]              INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[CustomInvoiceId] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Town]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Town]
(
	[Id]      INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[StateId] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceLine]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvoiceLine]
(
	[Id]            INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ProductUnitId] INTEGER      NULL,
	[InvoiceId]     INTEGER      NULL,
	[ProductId]     INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AccountTax]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AccountTax]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceTaxLine]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InvoiceTaxLine]
(
	[Id]        INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[InvoiceId] INTEGER      NULL,
	[TaxId]     INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Invoice]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Invoice]
(
	[Id]                  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[PendingStateId]      INTEGER      NULL,
	[RectifyingInvoiceId] INTEGER      NULL,
	[RefundByInvoiceId]   INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MeasureSource]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MeasureSource]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TypeAMeasures]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TypeAMeasures]
(
	[Id]               INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[CustomInvoiceId]  INTEGER  NOT NULL,
	[MeasuresSourceId] INTEGER  NOT NULL,
	[PreviousSourceId] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [StreetType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [StreetType]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ServicePoint]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ServicePoint]
(
	[Id]           INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[TownId]       INTEGER  NOT NULL,
	[StreetTypeId] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductUnit]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ProductUnit]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Contract]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Contract]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CustomInvoice]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CustomInvoice]
(
	[Id]             INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ContractId]     INTEGER  NOT NULL,
	[InvoiceId]      INTEGER  NOT NULL,
	[ServicePointId] INTEGER  NOT NULL,
	[AccessTariffId] INTEGER  NOT NULL,
	[PriceListId]    INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CustomInvoiceLine]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CustomInvoiceLine]
(
	[Id]              INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[CustomInvoiceId] INTEGER  NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CustomInvoiceLine]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CustomInvoice]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Contract]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductUnit]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ServicePoint]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [StreetType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TypeAMeasures]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MeasureSource]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Invoice]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceTaxLine]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AccountTax]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoiceLine]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Town]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TypeBMeasures]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InvoicePendingState]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Country]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AutonomousCommunity]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CountryState]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AccessTariff]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Product]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [PriceList]

