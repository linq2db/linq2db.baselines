BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InventoryResourceDTO]
(
	[Id]             Guid          NOT NULL,
	[Status]         INTEGER       NOT NULL,
	[ResourceID]     Guid          NOT NULL,
	[MaterialID]     Guid          NOT NULL,
	[BatchNumber]    NVarChar(255)     NULL,
	[InfeedAdviceID] Guid          NOT NULL,
	[Quantity]       Decimal       NOT NULL,

	CONSTRAINT [PK_InventoryResourceDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]              Guid NOT NULL,
	[TypeID]          Guid NOT NULL,
	[ResourcePointID] Guid NOT NULL,

	CONSTRAINT [PK_WmsLoadCarrierDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RefOutfeedTransportOrderResourceDTO]
(
	[Id]                  Guid    NOT NULL,
	[InventoryResourceID] Guid        NULL,
	[ResourceID]          Guid        NULL,
	[Quantity]            Decimal NOT NULL,

	CONSTRAINT [PK_RefOutfeedTransportOrderResourceDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourceTypeDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsResourceTypeDTO]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_WmsResourceTypeDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsResourcePointDTO]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_WmsResourcePointDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MaterialDTO]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_MaterialDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsBatchDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsBatchDTO]
(
	[Id]          Guid          NOT NULL,
	[MaterialID]  Guid          NOT NULL,
	[BatchNumber] NVarChar(255)     NULL,

	CONSTRAINT [PK_WmsBatchDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InfeedAdvicePositionDTO]
(
	[Id]                   Guid          NOT NULL,
	[InventoryResourceID]  Guid          NOT NULL,
	[InfeedAdviceNumber]   NVarChar(255)     NULL,
	[InfeedAdvicePosition] NVarChar(255)     NULL,

	CONSTRAINT [PK_InfeedAdvicePositionDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Status],
	[x].[ResourceID],
	[x].[MaterialID],
	[x].[BatchNumber],
	[x].[InfeedAdviceID],
	[x].[Quantity]
FROM
	[InventoryResourceDTO] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [y]
				LEFT JOIN [WmsBatchDTO] [batch] ON [y].[MaterialID] = [batch].[MaterialID] AND ([y].[BatchNumber] = [batch].[BatchNumber] OR [y].[BatchNumber] IS NULL AND [batch].[BatchNumber] IS NULL)
		WHERE
			[y].[Id] = [x].[Id] AND [y].[Status] = 1
	)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsBatchDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourceTypeDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

