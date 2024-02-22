﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InventoryResourceDTO]
(
	[Id]                Guid      NOT NULL,
	[Status]            INTEGER   NOT NULL,
	[ResourceID]        Guid      NOT NULL,
	[ModifiedTimeStamp] DateTime2     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]            Guid          NOT NULL,
	[ResourceLabel] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @ResourceLabel NVarChar(1) -- String
SET     @ResourceLabel = 'b'

INSERT INTO [WmsLoadCarrierDTO]
(
	[Id],
	[ResourceLabel]
)
VALUES
(
	@Id,
	@ResourceLabel
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @Status  -- Int32
SET     @Status = 40
DECLARE @ResourceID  -- Guid
SET     @ResourceID = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @ModifiedTimeStamp  -- DateTime
SET     @ModifiedTimeStamp = '2020-02-29 15:54:55.123'

INSERT INTO [InventoryResourceDTO]
(
	[Id],
	[Status],
	[ResourceID],
	[ModifiedTimeStamp]
)
VALUES
(
	@Id,
	@Status,
	@ResourceID,
	@ModifiedTimeStamp
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'A57339BD2343D84D9F4FDF9F93E2A627'
DECLARE @Status  -- Int32
SET     @Status = 40
DECLARE @ResourceID  -- Guid
SET     @ResourceID = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @ModifiedTimeStamp  -- DateTime
SET     @ModifiedTimeStamp = '2020-02-29 15:54:55.123'

INSERT INTO [InventoryResourceDTO]
(
	[Id],
	[Status],
	[ResourceID],
	[ModifiedTimeStamp]
)
VALUES
(
	@Id,
	@Status,
	@ResourceID,
	@ModifiedTimeStamp
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Status],
	[m_1].[ResourceLabel],
	[d].[Id],
	[d].[Status],
	[d].[ResourceID],
	[d].[ModifiedTimeStamp]
FROM
	(
		SELECT DISTINCT
			[t1].[Status],
			[t1].[ResourceLabel]
		FROM
			(
				SELECT
					[grp].[Status],
					[lc].[ResourceLabel]
				FROM
					[InventoryResourceDTO] [grp]
						INNER JOIN [WmsLoadCarrierDTO] [lc] ON [grp].[ResourceID] = [lc].[Id]
				GROUP BY
					[grp].[Status],
					[lc].[ResourceLabel]
				HAVING
					Count(*) > 1
			) [t1]
	) [m_1]
		INNER JOIN ([InventoryResourceDTO] [d]
			INNER JOIN [WmsLoadCarrierDTO] [lc_1] ON [d].[ResourceID] = [lc_1].[Id])
		ON [m_1].[Status] = [d].[Status] AND ([m_1].[ResourceLabel] = [lc_1].[ResourceLabel] OR [m_1].[ResourceLabel] IS NULL AND [lc_1].[ResourceLabel] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[grp].[Status],
	[lc].[ResourceLabel]
FROM
	[InventoryResourceDTO] [grp]
		INNER JOIN [WmsLoadCarrierDTO] [lc] ON [grp].[ResourceID] = [lc].[Id]
GROUP BY
	[grp].[Status],
	[lc].[ResourceLabel]
HAVING
	Count(*) > 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

